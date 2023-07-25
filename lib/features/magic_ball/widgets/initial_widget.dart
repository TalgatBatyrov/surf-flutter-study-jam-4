import 'package:flutter/material.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(image: AssetImage('assets/initial.png')),
        Image(image: AssetImage('assets/elipse.png')),
        Text(
          'Нажмите на шар или потрясите телефон',
          style: TextStyle(
            color: Color.fromRGBO(114, 114, 114, 1),
          ),
        )
      ],
    );
  }
}
