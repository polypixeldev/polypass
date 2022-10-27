import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/blocs/create_form/create_form_bloc.dart';

import 'package:polypass/pages/ftp/ftp_bloc.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

class FtpInput extends StatelessWidget {
  const FtpInput({Key? key, required this.routerState}) : super(key: key);

  final GoRouterState routerState;

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        actions: false,
        icon: false,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: BlocProvider(
                    create: (context) => FtpBloc(),
                    child: Column(children: [
                      Text('FTP Connection Information',
                          style: Theme.of(context).textTheme.titleMedium),
                      const HostInput(),
                      const UserInput(),
                      const PasswordInput(),
                      const PathInput(),
                      Row(
                        children: [
                          const CancelButton(),
                          const Padding(padding: EdgeInsets.only(left: 10)),
                          SubmitButton(routerState: routerState)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ], mainAxisSize: MainAxisSize.min),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class HostInput extends StatelessWidget {
  const HostInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary),
      margin: const EdgeInsets.all(10),
      width: 500,
      child: TextField(
          decoration: InputDecoration(
              labelText: 'Host',
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none),
          style: theme.textTheme.bodySmall,
          onChanged: (host) {
            context.read<FtpBloc>().add(FtpEvent.hostChanged(host));
          }),
    );
  }
}

class UserInput extends StatelessWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary),
      margin: const EdgeInsets.all(10),
      width: 500,
      child: TextField(
          decoration: InputDecoration(
              labelText: 'Username',
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none),
          style: theme.textTheme.bodySmall,
          onChanged: (user) {
            context.read<FtpBloc>().add(FtpEvent.userChanged(user));
          }),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary),
      margin: const EdgeInsets.all(10),
      width: 500,
      child: TextField(
          decoration: InputDecoration(
              labelText: 'Password',
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          style: theme.textTheme.bodySmall,
          onChanged: (password) {
            context.read<FtpBloc>().add(FtpEvent.passwordChanged(password));
          }),
    );
  }
}

class PathInput extends StatelessWidget {
  const PathInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary),
      margin: const EdgeInsets.all(10),
      width: 500,
      child: TextField(
          decoration: InputDecoration(
              labelText: 'Path',
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none),
          style: theme.textTheme.bodySmall,
          onChanged: (path) {
            context.read<FtpBloc>().add(FtpEvent.pathChanged(path));
          }),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return BlocBuilder<FtpBloc, FtpState>(builder: (context, state) {
      return ElevatedButton(
          child: Text('Cancel', style: Theme.of(context).textTheme.bodyMedium),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
          onPressed: state.submitted ? null : () => router.go('/'));
    });
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key, required this.routerState}) : super(key: key);

  final GoRouterState routerState;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FtpBloc, FtpState>(builder: (context, state) {
      return ElevatedButton(
          child: Text('Submit', style: Theme.of(context).textTheme.bodyMedium),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
          onPressed: state.submitted || !state.isFormValid
              ? null
              : () {
                  final ftpBloc = context.read<FtpBloc>();
                  ftpBloc.add(const FtpEvent.submitted());

                  final ftpUrl = VaultUrl.ftp(
                      host: ftpBloc.state.host,
                      user: ftpBloc.state.user,
                      password: ftpBloc.state.password,
                      path: ftpBloc.state.path);

                  switch (routerState.queryParams['redirect']) {
                    case 'create':
                      final globalBloc = context.read<CreateFormBloc>();
                      globalBloc.add(CreateFormEvent.urlChanged(ftpUrl));

                      GoRouter.of(context).go('/create');
                      break;
                    case 'open':
                      context.read<VaultBloc>().add(VaultEvent.opened(ftpUrl));
                      break;
                  }
                });
    });
  }
}
