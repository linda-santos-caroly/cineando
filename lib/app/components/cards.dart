import 'package:flutter/material.dart';


//classe criada para os cards que foram utilizados para mostrar os cinemas e os filmes em cartaz


class ImageTextContainer extends StatelessWidget {
  // Variáveis para o texto, a imagem e a tela de navegação
  final String imageUrl;
  final String text;
  final String text2;
  final Widget destinationScreen;

  // Construtor da classe
  ImageTextContainer({
    required this.imageUrl,
    required this.text,
    required this.text2,

    required this.destinationScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navegar para a nova tela usando Navigator.of(context).push
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: ConstrainedBox(
      constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width - 32,),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  blurStyle: BlurStyle.outer,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Card(
                  child: Image.asset(imageUrl,
                      width: 70, // Definir um tamanho fixo para a imagem
                      height: 80,

                    // Definir um tamanho fixo para a imagem
                      fit: BoxFit.cover, // Garantir que a imagem seja cortada corretamente
                    ),
                ), // Imagem que vem da URL
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8,3,3,3),
                    child: Column(
                  
                      children: [
                        Text(
                          softWrap: true, // O texto será automaticamente quebrado quando necessário
                          overflow: TextOverflow.clip, // Pode usar TextOverflow.ellipsis para adicionar "..."
                  
                          text,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          softWrap: true, // O texto será automaticamente quebrado quando necessário
                          overflow: TextOverflow.clip, // Pode usar TextOverflow.ellipsis para adicionar "..."
                  
                          text2,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
