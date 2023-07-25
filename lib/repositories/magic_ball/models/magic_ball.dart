import 'package:freezed_annotation/freezed_annotation.dart';

part 'magic_ball.freezed.dart';

part 'magic_ball.g.dart';

@freezed
class MagicBall with _$MagicBall {
  const factory MagicBall({
    @JsonKey(name: 'reading') required String answer,
  }) = _MagicBall;

  factory MagicBall.fromJson(Map<String, dynamic> json) =>
      _$MagicBallFromJson(json);
}
