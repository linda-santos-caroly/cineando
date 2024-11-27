import 'package:flutter/material.dart';

// essa página mostra a história do cinema São Luiz
class InfoSaoluizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cinema São Luiz"),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/saoluiz.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Inaugurado no dia 6 de setembro de 1952 e situado às margens do Rio Capibaribe, na cabeceira da mais moderna ponte da cidade à época, a Ponte Duarte Coelho, o São Luiz tornou-se um dos mais emblemáticos cinemas do Recife, prezando por essa arte em sua concepção clássica, com exibição em cine-teatro. Hoje o Cinema São Luiz é de mais rica concepção artística e arquitetônica do Recife e um dos últimos cinemas de rua do Brasil.\n\n'
                    'Em 2008 o prédio foi tombado como monumento histórico pelo Governo do Estado que, por meio da Fundarpe, trouxe de volta ao público o tradicional Cinema São Luiz, revitalizado e sem os vícios da mídia cinematográfica, preservando e difundindo a arte do cinema e contribuindo para o resgate da história da cidade e a manutenção de um verdadeiro templo de sua cultura. Em 5 de novembro de 2015, o cinema permaneceu inaugurou seu novo projetor digital Barco 238 4K, com capacidade de projetar filmes em 3D. O São Luiz também conta com um servidor digital e novos processadores e amplificadores de som para o formato Dolby 7.1.',
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ]),
          )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InfoSaoluizPage(),
  ));
}
