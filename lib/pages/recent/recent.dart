import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:polypass/components/app_wrapper/app_wrapper.dart';

import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';
import 'package:polypass/blocs/recent_bloc/recent_bloc.dart';
import 'package:polypass/data/vault_repository.dart';

class Recent extends StatelessWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final appSettingsBloc = context.read<AppSettingsBloc>();
    var recentUrl = appSettingsBloc.state.settings.recentUrl;

    if (recentUrl != null) {
      context.read<VaultRepository>().fileExists(recentUrl).then((exists) {
        if (!exists) {
          appSettingsBloc.add(AppSettingsEvent.settingsUpdated(
              appSettingsBloc.state.settings.copyWith(recentUrl: null)));
        } else {
          context
              .read<RecentBloc>()
              .add(RecentEvent.recentUrlChanged(recentUrl));
        }

        router.go('/');
      });
    } else {
      Future.delayed(Duration.zero, () {
        router.go('/');
      });
    }

    return AppWrapper(
        appBar: false,
        child: Container(
            color: Colors.black,
            child: const Image(image: AssetImage('assets/polypass.png'))));
  }
}
