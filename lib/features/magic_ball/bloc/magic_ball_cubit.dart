import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_magic_ball/repositories/magic_ball/i_magic_ball_repos.dart';

import '../../../repositories/magic_ball/models/magic_ball.dart';

part 'magic_ball_cubit.freezed.dart';
part 'magic_ball_state.dart';

class MagicBallCubit extends Cubit<MagicBallState> {
  final IMagicBallRepository _magicBallRepository;
  MagicBallCubit(this._magicBallRepository)
      : super(const MagicBallState.initial());

  Future<void> getMagicBall() async {
    try {
      emit(const MagicBallState.loading());

      final magicBall = await _magicBallRepository.getMagicBall();

      emit(MagicBallState.loaded(magicBall));
    } catch (e) {
      emit(const MagicBallState.error('Ошибка загрузки'));
    }
  }
}
