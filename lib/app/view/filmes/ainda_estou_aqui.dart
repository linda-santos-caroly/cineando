import 'package:flutter/material.dart';


class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmes em cartaz'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ainda Estou Aqui',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/pt/5/57/Ainda_Estou_Aqui_2024_poster.jpg',
                  width: 300,
                  height: 450,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Horários de Exibição:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Chip(
                    label: const Text('14:00'),
                    backgroundColor: Colors.grey[400],
                  ),
                  Chip(
                    label: const Text('16:30'),
                    backgroundColor: Colors.grey[400],
                  ),
                  Chip(
                    label: const Text('19:00'),
                    backgroundColor: Colors.green[300],
                  ),
                  Chip(
                    label: const Text('21:30'),
                    backgroundColor: Colors.green[300],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Sinopse:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'A adaptação da autobiografia homônima de Marcelo Rubens Paiva se concentra no Rio de Janeiro, em janeiro de 1971, para onde o ex-deputado federal Rubens Paiva (Selton Mello) voltou a residir no Brasil alguns meses antes com sua esposa, Eunice Paiva (Fernanda Torres - de 1971 a 1996 / Fernanda Montenegro - em 2014), e seus cinco filhos depois do seu autoexílio em 1964 devido à cassação de seu mandato pelo Ato Institucional Nº 1 (devida, por sua vez, à sua participação na CPI do IPES/IBAD em 1962). /n '
                    'Apesar de ter voltado a exercer a engenharia e a cuidar de seus negócios sem deixar de lado seus momentos ao lado de sua família e seus amigos, Rubens, por continuar prestando suporte aos exilados sem comentar praticamente nada de suas atividades políticas com sua esposa e seus filhos, teve sua casa invadida, ocupada e revistada por seis homens (que, na verdade dos fatos, declararam pertencer à Força Aérea Brasileira), sendo, logo em seguida, dela levado preso para nunca mais voltar.Um dia depois, ao passar a ter a vida pessoal sua e de seus filhos devassada por membros das Forças Armadas, Eunice é levada presa com uma de suas quatro filhas com Rubens, Eliana (Luiza Kosovski - em 1971 / Marjorie Estiano - em 2014),[17] e sua vida é modificada para sempre',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
