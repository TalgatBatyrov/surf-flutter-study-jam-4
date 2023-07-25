import 'models/magic_ball.dart';

abstract class IMagicBallRepository {
  Future<MagicBall> getMagicBall();
}
