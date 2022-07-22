import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:polypass/components/appwrapper.dart';

import 'dart:io';

import 'package:polypass/blocs/app_settings_bloc.dart';
import 'package:polypass/blocs/vault_bloc.dart';

class Recent extends StatelessWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var recentPath = context.read<AppSettingsBloc>().state.settings.recentPath;

    if (recentPath != null) {
      final recentFile = File(recentPath);

      if (!recentFile.existsSync()) {
        recentPath = null;
      }
    }

    Future.delayed(Duration.zero, () {
      if (recentPath != null) {
        context.read<VaultBloc>().add(VaultEvent.opened(recentPath));
      } else {
        GoRouter.of(context).go('/');
      }
    });

    return AppWrapper(child: Container());
  }
}
