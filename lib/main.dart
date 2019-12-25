import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.green,
      ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const frases = [
    'Já experimentou acreditar em você? Tente! Você não faz ideia do que é capaz.',
    'Se quer viver uma vida feliz, amarre-se a uma meta, não a pessoas nem a coisas.',
    'Sonhos existem para serem realizados, por isso não olhe para trás nem escute palavras de desânimo!',
    'O poder está dentro de você, na sua mente, pois se acreditar que consegue não haverá obstáculo capaz de impedir o seu sucesso.',
    'Aquilo que você está vivendo, o peso que você está carregando, não é nada comparado à alegria que está esperando por você!',
    'Nunca é tarde demais para ser aquilo que sempre desejou ser.',
    'A melhor maneira de melhorar o padrão de vida está em melhorar o padrão de pensamento.',
    'Tfraudo que você precisa para começar a realizar seus sonhos é confiar em você, e lutar sem ter medo de falhar.',
  ];

  var selected = "Clique abaixo para gerar uma frase!";
  void sortPhrase(){
    setState(() {
      selected = frases[Random().nextInt(frases.length - 1)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                selected,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: sortPhrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
