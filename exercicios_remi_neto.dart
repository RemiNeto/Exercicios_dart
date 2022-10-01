/*Exercícios do dia 17/08
REMI RODRIGUES NETO*/


//import 'package:exercicios/exercicios.dart' as exercicios;
import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

  print('Qual exercício você deseja ver? (1 ao 8)');
  int ex = int.parse(stdin.readLineSync(encoding: utf8)!);

  switch(ex){
    case 1: //Exercício 1 
      print('Digite o primeiro número pra somar: ');
      double x = double.parse(stdin.readLineSync(encoding: utf8)!);

      print('Digite o segundo número pra somar: ');
      double z = double.parse(stdin.readLineSync(encoding: utf8)!);

      String soma = (x + z).toStringAsFixed(2);
      print('O resultado da soma é $soma');
      break;

    case 2: //Exercício 2
      print('Digite o primeiro número pra subtrair: ');
      double x = double.parse(stdin.readLineSync(encoding: utf8)!);

      print('Digite o segundo número pra subtrair: ');
      double z = double.parse(stdin.readLineSync(encoding: utf8)!);

      String diferenca = (x - z).toStringAsFixed(2);
      print('O resultado da subtração é $diferenca');
      break;

    case 3: //Exercício 3
      print('Digite o primeiro número da multiplicação: ');
      double x = double.parse(stdin.readLineSync(encoding: utf8)!);

      print('Digite o segundo número da multiplicação: ');
      double z = double.parse(stdin.readLineSync(encoding: utf8)!);

      String resultado = (x * z).toStringAsFixed(2);
      print('O resultado da multiplicação é $resultado');
      break;

    case 4: //Exercício 4
      print('Digite o numerador: ');
      double x = double.parse(stdin.readLineSync(encoding: utf8)!);

      print('Digite seu denominador: ');
      double z = double.parse(stdin.readLineSync(encoding: utf8)!);

      String divisao = (x / z).toStringAsFixed(2);
      print('O resultado da divisão é $divisao');
      break;

    case 5: //Exercício 5
      print('Digite a base do retângulo: ');
      double base = double.parse(stdin.readLineSync(encoding: utf8)!);

      print('Digite a altura do retângulo: ');
      double altura = double.parse(stdin.readLineSync(encoding: utf8)!);

      String area = (base * altura).toStringAsFixed(2);
      print('A área do retângulo é $area');
      break;

    case 6: //Exercício 6
      print('Digite o lado triângulo: ');
      double l = double.parse(stdin.readLineSync(encoding: utf8)!);

      String areaT = (pow(l, 2)*sqrt(3)/4).toStringAsFixed(2);
      print('A área do triângulo é $areaT');
      break;

    case 7: //Exercício 7
      print('Digite o tamanho da circunferência: ');
      double cir = double.parse(stdin.readLineSync(encoding: utf8)!);

      String r = (cir/(pi*2)).toStringAsFixed(2);
      print('O raio da circunferência é $r');
      break;

    case 8: //Exercício 8
      print('Por favor digite seu nome completo: ');
      String name = stdin.readLineSync(encoding: utf8)!;
      print('Por favor digite sua idade em dias: ');
      double days = double.parse(stdin.readLineSync(encoding: utf8)!);

      int years = days ~/ 365;
      days = days % 365;
      int mounths = days ~/ 30;
      days = days % 30;

      int index = name.indexOf(' ');
      String firstName = name.substring(0, index);

      print('Olá $firstName, tudo bem?\nDe acordo com os dados fornecidos, você tem $years anos, $mounths meses e ${days.toStringAsFixed(0)} dias vividos, parabéns por essa jornada!\n\nSeja muito bem vindo ao nosso curso!');
      break;
    default:
      print('Exercício inválido');

      break;
}
}