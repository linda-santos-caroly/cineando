import 'package:flutter/material.dart';
// classe para textTheme com tamanho de fonte média
class H2 extends StatelessWidget {
  const H2(
      this.textBody, {
        Key?key, this.colorBody
      }) : super(key: key);

  final String textBody;
  final Color? colorBody;

  @override
  Widget build(BuildContext context) {
    return Text(
      textBody,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: colorBody

      ),
    );
  }
}