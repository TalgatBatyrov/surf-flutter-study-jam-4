import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_practice_magic_ball/features/magic_ball/bloc/magic_ball_cubit.dart';
import 'package:shake/shake.dart';

import '../widgets/error_widget.dart';
import '../widgets/initial_widget.dart';
import '../widgets/loaded_widget.dart';
import '../widgets/loading_widget.dart';

class MagicBallScreen extends StatefulWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  State<MagicBallScreen> createState() => _MagicBallScreenState();
}

class _MagicBallScreenState extends State<MagicBallScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Shake!'),
          ),
        );

        print('Shake!');
        // Do stuff on phone shake
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<Offset>(
            begin: const Offset(0.0, 0.0), end: const Offset(0.0, -10.5))
        .animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          context.read<MagicBallCubit>().getMagicBall();
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(16, 12, 43, 1),
                Color.fromRGBO(3, 3, 10, 1)
              ],
            ),
          ),
          child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                    offset: _animation.value,
                    child: BlocBuilder<MagicBallCubit, MagicBallState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const InitialWidget(),
                          loading: () => const LoadingWidget(),
                          loaded: (magicBall) =>
                              LoadedWidget(answer: magicBall.answer),
                          error: (message) => AppErrorWidget(message: message),
                        );
                      },
                    ));
              }),
        ),
      ),
    );
  }
}
