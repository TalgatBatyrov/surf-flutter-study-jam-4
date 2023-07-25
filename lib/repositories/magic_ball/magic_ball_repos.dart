import 'package:surf_practice_magic_ball/api/app_api.dart';
import 'package:surf_practice_magic_ball/repositories/magic_ball/i_magic_ball_repos.dart';
import 'package:dio/dio.dart';
import 'models/magic_ball.dart';

class MagicBallRepository implements IMagicBallRepository {
  final Dio _dio;
  MagicBallRepository(this._dio);

  @override
  Future<MagicBall> getMagicBall() async {
    final response = await _dio.get(AppApi.getMagicAnswer);
    final data = response.data;

    return MagicBall.fromJson(data);
  }
}
