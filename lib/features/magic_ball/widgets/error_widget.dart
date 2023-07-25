import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final String message;
  const AppErrorWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const Image(image: AssetImage('assets/error_ball.png')),
            Text(
              message,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        const Image(image: AssetImage('assets/elipse_error.png')),
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
