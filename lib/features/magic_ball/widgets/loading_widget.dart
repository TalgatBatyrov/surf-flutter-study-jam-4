import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/theme/theme_cubit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        themeCubit.isLight
            ? const Image(image: AssetImage('assets/light_loading.png'))
            : const Image(image: AssetImage('assets/loading_ball.png')),
        const Image(image: AssetImage('assets/elipse.png')),
        const Text(
          'Нажмите на шар или потрясите телефон',
          style: TextStyle(
            color: Color.fromRGBO(114, 114, 114, 1),
          ),
        )
      ],
    );
  }
}
