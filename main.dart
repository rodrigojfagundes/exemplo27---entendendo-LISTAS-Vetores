import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//criando uma LISTA/VETOR com o nome de NOMES e add pessoas/nomes a essa LISTA/VETOR
  var nomes = ['maria', 'carol', 'nicolle', 'samara', 'leticia', 'jessica'];
  //criando uma LISTA/VETOR de nome VALORES q tera os NUMEROS de 1 a 5
  //OBS: POSICAO 0 = Numero 1......... posicao 1 = Numero 2... etc...
  var valores = ['1', '2', '3', '4', '5'];

  List<int> teste = [10, 20, 30];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //tudo q ta no safe area ta na area visivel do app
        body: SafeArea(
          //column para se quiser poder criar VARIOS CONTAINERS
          child: Column(
            //children é tipo uma lista/vetor de coisas tipo containers
            children: [
              //criando um container, com tamanho, cor, e o texto q é a LISTA/VETOR NOMES
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                //imprimindo o ultimo NOME da LISTA/VETOR NOMES
                child: Text(nomes.last),
              ),
              //criando container q VAI EXIBIR o NOME q ta na POSICAO 2 da LISTA NOMES
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
                //exibindo VALOR 2 da lista NOMES
                child: Text(nomes[2]),
              ),

              //criando um container para exibir o q ta na LISTA VALORES
              Container(
                //TAMANHO, COR do container
                height: 100,
                width: 100,
                color: Colors.red,
                //child, exibindo o q ta na POSICAO 3 da LISTA VALORES...
                //o q ta na POSICAO 3 é o valor 4
                child: Text(valores.elementAt(3)),
              ),
              //neste container nos estamos mostrando
              //o q ta na POSICAO 1 da LISTA VALORES, e o q ta na POSICAO 2 da LISTA VALORES
              //NAO É possivel fazer a SOMA desses valores, pois a LISTA VALORES
              //e uma LISTA do tipo STRING... Por isso o "+" ali NAO SOMA
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                child: Text("${valores[1] + valores[2]}"),
              ),
              //container q vai exibir a SOMA dos valores q ta na posicao 1 da LISTA TESTE
              //com o valor q ta na POSICAO 2 da LISTA TESTE...
              //vai exibir o RESULTADO da SOMA desses 2 valores...
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text("${teste[1] + teste[2]}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
