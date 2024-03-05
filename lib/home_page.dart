import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('lib/assets/image/background.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Image.asset('lib/assets/image/logo.png'),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildImageButton('image$randomNumber1.png'),
                      buildImageButton('image$randomNumber2.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildImageButton('image$randomNumber3.png'),
                      buildImageButton('image$randomNumber4.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                  IconButton(
                    isSelected: true,
                    onPressed: () {
                      updateRandomNumbers();
                    },
                    icon: Image.asset(
                      width: 121,
                      'lib/assets/image/button.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Variáveis que guardam o valor da imagem
  int randomNumber1 = 1;
  int randomNumber2 = 1;
  int randomNumber3 = 1;
  int randomNumber4 = 1;

  // Método para atualizar as imagens individualmente
  void updateRandomNumbers() {
    setState(
      () {
        int mainRandomNumber = Random().nextInt(21) + 1;
        // Gerado aleatoriamente
        randomNumber1 = mainRandomNumber;

        // Com 30%
        if (Random().nextDouble() < 0.3) {
          randomNumber2 = mainRandomNumber;
        } else {
          randomNumber2 = Random().nextInt(21) + 1;
        }

        // Com 30%
        if (Random().nextDouble() < 0.3) {
          randomNumber3 = mainRandomNumber;
        } else {
          randomNumber3 = Random().nextInt(21) + 1;
        }
        // Gerado aleatoriamente
        randomNumber4 = Random().nextInt(21) + 1;
        checkForWin();
      },
    );
  }

  void checkForWin() {
    if (randomNumber1 == randomNumber2 &&
        randomNumber2 == randomNumber3 &&
        randomNumber3 == randomNumber4) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('Parabéns!'),
            content: const Text('Voce venceu!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Tentar novamente'),
              ),
            ],
          );
        },
      );
    }
  }

  // Método para criar os botões de imagem
  Widget buildImageButton(String imagePath) {
    return IconButton(
      isSelected: true,
      onPressed: () {},
      icon: Image.asset(
        'lib/assets/image/$imagePath',
      ),
    );
  }
}
