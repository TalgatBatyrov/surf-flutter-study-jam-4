part of 'magic_ball_cubit.dart';

@freezed
class MagicBallState with _$MagicBallState {
  const MagicBallState._();
  const factory MagicBallState.initial() = _Initial;
  const factory MagicBallState.loading() = _Loading;
  const factory MagicBallState.loaded(MagicBall answer) = _Loaded;
  const factory MagicBallState.error(String message) = _Error;
}
