import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/features/magic_ball/blocs/theme/theme_cubit.dart';

import '../api/app_api.dart';
import '../features/magic_ball/blocs/magic_ball/magic_ball_cubit.dart';
import '../repositories/magic_ball/magic_ball_repos.dart';
import '../features/magic_ball/screen/magic_ball_screen.dart';

class App extends StatelessWidget {
  /// Constructor for [App].
  App({Key? key}) : super(key: key);

  late final _dio = Dio()..options.baseUrl = AppApi.baseUrl;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: RepositoryProvider(
              create: (context) => MagicBallRepository(_dio),
              child: BlocProvider(
                create: (context) =>
                    MagicBallCubit(context.read<MagicBallRepository>()),
                child: const MagicBallScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
