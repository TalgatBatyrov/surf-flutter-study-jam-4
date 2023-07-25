import 'package:flutter/material.dart';

class LoadedWidget extends StatelessWidget {
  final String answer;
  const LoadedWidget({
    super.key,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const Image(image: AssetImage('assets/loading_ball.png')),
            Text(
              answer,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
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
