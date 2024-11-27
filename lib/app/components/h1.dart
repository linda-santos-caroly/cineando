

import 'package:flutter/material.dart';
// clase para textTheme com tamanho de fonte para títulos
class H1 extends StatelessWidget {
  const H1(
      this.text, {
        Key?key, this.color
      }) : super(key: key);

final String text;
final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: color

      ),
    );
  }
}
