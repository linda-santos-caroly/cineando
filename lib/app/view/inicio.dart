import 'package:cineando_residencia/app/view/cinemas/sao_luis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../components/cards.dart';
import 'package:cineando_residencia/app/components/cards.dart';

//Página principal que mostra todos os cinemas alternativos

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Início'),
      ),
      body: SafeArea(
        child: ListView(
         // mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/caranguejo-cinefilo.png',
            ),
            SizedBox(height: 50),
            Center(

              child: Text('Cineando',
                style: TextStyle(
                  fontFamily: 'Limelight',
                  fontSize: 60,
                  fontWeight: FontWeight.w600,
                  ),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('O aplicativo dos cinemas alternativos do Recife',
                  style: TextStyle(
                    fontFamily: 'Limelight',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,

                  ),
                ),
              ],
            ),

            //aqui serão utilizadas classes criadas no arquivo cards.dart para otimizar o código
            // campo de texto preenchido com lorem ipsum

            ImageTextContainer(imageUrl: 'assets/images/cinema_sao_luiz.webp',
                text: 'Cinema São Luiz',
                text2: 'Mussum Ipsum, cacilds vidis litro abertis.  Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Quem manda na minha terra sou euzis! ',
                destinationScreen: saoLuizPage()
            ),

            ImageTextContainer(imageUrl: 'assets/images/caranguejo-cinefilo.png',
                text: 'Cinema da Fundação: Derby',
                text2: 'Mussum Ipsum, cacilds vidis litro abertis.  Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Quem manda na minha terra sou euzis! ',
                destinationScreen: saoLuizPage()
            ),
            ImageTextContainer(imageUrl: 'assets/images/caranguejo-cinefilo.png',
                text: 'Cinema da Fundação: Porto',
                text2: 'Mussum Ipsum, cacilds vidis litro abertis.  Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Quem manda na minha terra sou euzis! ',
                destinationScreen: saoLuizPage()
            ),
            ImageTextContainer(imageUrl: 'assets/images/caranguejo-cinefilo.png',
                text: 'Cinema da UFPE',
                text2: 'Mussum Ipsum, cacilds vidis litro abertis.  Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Quem manda na minha terra sou euzis! ',
                destinationScreen: saoLuizPage()
            ),
          ],
        ),
      ),
    );
  }
}



