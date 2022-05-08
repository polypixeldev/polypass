import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_form_bloc.dart';
import '../../blocs/db_bloc.dart';

import '../../components/appwrapper.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final theme = Theme.of(context);

    return AppWrapper(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration:BoxDecoration(
              color: theme.cardColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10))
            ),
            child: Text(
              'Create a database',
              style: theme.textTheme.titleMedium
            ),
          ),
          BlocProvider(
            create: (context) => CreateFormBloc(),
            child: MultiBlocListener(
              listeners: [
                BlocListener<CreateFormBloc, CreateFormState>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Creating database...'),
                      duration: Duration( days: 365 )
                    ));
                  },
                  listenWhen: (previous, current) => current.submitted == true,
                ),
                BlocListener<CreateFormBloc, CreateFormState>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    context.read<DatabaseBloc>().add(DatabaseOpened( path: state.path ));

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Opening database...'),
                      duration: Duration( days: 365 )
                    ));
                  },
                  listenWhen: (previous, current) => current.created == true
                )
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                padding: const EdgeInsets.all(15),
                child: Form(
                  child: Column(
                    children: [
                      const NameInput(),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const DescriptionInput(),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      BlocBuilder<CreateFormBloc, CreateFormState>(
                        builder: (context, state) {
                          return Text(
                            "Current path: ${state.path != '' ? state.path : 'None'}",
                            style: theme.textTheme.bodyMedium
                          );
                        }
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      const PathInput(),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                      Row(
                        children: [
                          BackButton(router: router),
                          const Padding( padding: EdgeInsets.symmetric( horizontal: 5 )),
                          const SubmitButton()
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  )
                )
              ),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
      ),
      actions: false,
      icon: false
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder: (context, state) {
        return ElevatedButton(
          child: Text(
            'Submit',
            style: Theme.of(context).textTheme.bodyMedium
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))
          ),
          onPressed: state.submitted || !state.isFormValid ? null : () {
            context.read<CreateFormBloc>().add(const FormSubmitted());
          },
        );
      }
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
    required this.router,
  }) : super(key: key);

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder: (context, state) {
        return ElevatedButton(
          child: Text(
            'Back',
            style: Theme.of(context).textTheme.bodyMedium
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))
          ),
          onPressed: state.submitted ? null : () { 
            try {
              router.pop();
            } catch (_e) {
              router.go('/');
            }
          }
        );
      }
    );
  }
}
class PathInput extends StatelessWidget {
  const PathInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder:(context, state) {
        return ElevatedButton(
          child: Text(
            'Set database file location',
            style: Theme.of(context).textTheme.bodyMedium
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))
          ),
          onPressed: state.submitted ? null : () async {
            final bloc = context.read<CreateFormBloc>();
            
            final path = await FilePicker.platform.saveFile(
              dialogTitle: 'Set database file location',
              fileName: bloc.state.name == '' ? 'passwords.ppdb' : '${bloc.state.name}.ppdb',
              type: FileType.custom,
              allowedExtensions: ['ppdb']
            );
      
            if (path == null) {
              return;
            }
                
            bloc.add(PathChanged(path: path));
          },
        );
      }
    );
  }
}

class DescriptionInput extends StatelessWidget {
  const DescriptionInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder: ((context, state) {
        return Container(
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: theme.colorScheme.secondary
          ),
          child: TextFormField(
            enabled: !state.submitted,
            decoration: InputDecoration(
              labelText: 'Description',
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none
            ),
            style: theme.textTheme.bodySmall,
            onChanged: (description) {
              context.read<CreateFormBloc>().add(DescriptionChanged(description: description));
            },
            cursorColor: Colors.black,
          )
        );
      }),
    );
  }
}

class NameInput extends StatelessWidget {
  const NameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder: ((context, state) {
        return Container(
          width: 500,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(5)
          ),
          child: TextFormField(
            enabled: !state.submitted,
            decoration: InputDecoration(
              labelText: 'Name (required)',
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none
            ),
            style: theme.textTheme.bodySmall,
            onChanged: (name) {
              context.read<CreateFormBloc>().add(NameChanged(name: name));
            },
            cursorColor: Colors.black,
          )
        );
      })
    );
  }
}