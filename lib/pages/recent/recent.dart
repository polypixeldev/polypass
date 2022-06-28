import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:polypass/components/appwrapper.dart';

import 'package:polypass/data/app_settings.dart';
import 'package:polypass/blocs/vault_bloc.dart';

class Recent extends StatelessWidget {
  const Recent({ Key? key, required this.settings }) : super(key: key);

  final AppSettings settings;

  @override
  Widget build(BuildContext context) {
    final recentPath = settings.recentPath;

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