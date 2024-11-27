import 'package:cineando_residencia/app/view/cinemas/sao_luis.dart';
import 'package:flutter/material.dart';

import 'app/view/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
  const corPrincipal = Color(0xFFF27B50);
  const textColor = Color(0xFF4A4A4A);
  const backgroundColor = Color(0xFFF0E1D6);
  const backgroundColor2 = Color(0xFFFFFFFF);


  return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Cineando App',
      theme: ThemeData(
        fontFamily: "Poppins",
        textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontFamily: 'Poppins',
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 20),

          ),
        appBarTheme: const AppBarTheme(
          backgroundColor: corPrincipal,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: backgroundColor
          ),
        ),

      ),
      home: InicioPage()//direciona para página Inicio
    );
  }
}
