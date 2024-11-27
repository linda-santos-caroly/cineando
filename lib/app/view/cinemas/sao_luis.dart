import 'package:cineando_residencia/app/components/h1.dart';
import 'package:cineando_residencia/app/view/info_cinemas/info_saoluiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../components/cards.dart';
import '../../components/h2.dart';
import '../filmes/ainda_estou_aqui.dart';

// Página do cinema São Luiz, com direcionamento para filmes em cartaz e para a história do cinema

class saoLuizPage extends StatefulWidget {
  const saoLuizPage({super.key});

  @override
  State<saoLuizPage> createState() => _saoLuizPageState();
}

class _saoLuizPageState extends State<saoLuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programação São Luiz'),
        // leading: GestureDetector(
        //   onTap: (){
        //     Navigator.of(context).pop();
        //   },
        // ),
      ),
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: ListView(
                children: [

                  Image.asset('assets/images/saoluiz.jpg',
                  ),

                  SizedBox(height: 30),

                  Center(child: H1("Cinema São Luiz")),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InfoSaoluizPage()));
                    },
                    child:  Padding(
                      padding: EdgeInsets.symmetric(vertical:30, horizontal: 50),

                      child: Card(
                        elevation: 8, // Sombra para a sensação de flutuação
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                          side: const BorderSide(width: 2, color: Color(0xFFF27B50)), // Borda sólida
                        ),

                        color: const Color(0xFFFFFFFF),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              H2('Conheça a história do cinema',
                              ),
                              Icon(Icons.arrow_forward_rounded, color: Color(0xFFF27B50))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Filmes em cartaz'),
                  ),


                  ImageTextContainer(imageUrl: 'assets/images/Ainda_Estou_Aqui_2024_poster.jpg',
                      text: 'Filme',
                      text2: 'Mussum Ipsum, cacilds vidis litro abertis.  Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. Quem manda na minha terra sou euzis! ',
                      destinationScreen: MovieDetailPage()
                  ),
                  ImageTextContainer(imageUrl: 'assets/images/caranguejo-cinefilo.png',
                      text: 'Filme',
                      text2: 'confira nossa sugestao',
                      destinationScreen: MovieDetailPage()
                  ),
                  ImageTextContainer(imageUrl: 'assets/images/caranguejo-cinefilo.png',
                      text: 'Filme',
                      text2: 'confira nossa sugestao',
                      destinationScreen: MovieDetailPage()

                  ),






                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}

