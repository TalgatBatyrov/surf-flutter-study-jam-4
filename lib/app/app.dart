import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/app_api.dart';
import '../features/magic_ball/bloc/magic_ball_cubit.dart';
import '../repositories/magic_ball/magic_ball_repos.dart';
import '../features/magic_ball/screen/magic_ball_screen.dart';

class App extends StatelessWidget {
  /// Constructor for [App].
  App({Key? key}) : super(key: key);

  late final _dio = Dio()..options.baseUrl = AppApi.baseUrl;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: Colors.black),
      ),
      home: RepositoryProvider(
        create: (context) => MagicBallRepository(_dio),
        child: BlocProvider(
          create: (context) =>
              MagicBallCubit(context.read<MagicBallRepository>()),
          child: const MagicBallScreen(),
        ),
      ),
    );
  }
}
