//import 'package:lacos/lacos.dart' as lacos;

import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");
  int i = 1;
  do{
    print('Digite o número do exercício desejado, digite 0 para sair:');
    int ex = int.parse(stdin.readLineSync(encoding: utf8)!);
    switch(ex){
      case 0:
        print('Obridado pela atenção!');
        i = 0;
        break;
      case 1: //Exercício 1
        print('Digite dois valores para saber qual o maior:');
        print('Digite o primeiro valor:');
        double x = double.parse(stdin.readLineSync(encoding: utf8)!);
        print('Digite o segundo valor:');
        double y = double.parse(stdin.readLineSync(encoding: utf8)!);
        if(x>y){
          print('O maior número é $x.');
        }else{
          print('O maior número é $y.');
        }
        break;
      case 2: //Exercício 2
        print('Digite o número de maçãs compradas:');
        int apples = int.parse(stdin.readLineSync(encoding: utf8)!);
        if(apples >= 12){
          double total = apples * 0.25;
          print('O valor total da compra foi de R\$$total.');
        }else{
          double total = apples * 0.30;
          print('O valor total da compra foi de R\$$total.');
        }
        break;
      case 3: //Exercício 3
        print('Digite o primeiro lado do triângulo:');
        double x = double.parse(stdin.readLineSync(encoding: utf8)!);
        print('Digite o segundo lado do triângulo:');
        double y = double.parse(stdin.readLineSync(encoding: utf8)!);
        print('Digite o terceiro lado do triângulo:');
        double z = double.parse(stdin.readLineSync(encoding: utf8)!);
        if(x == y && x == z){
          print('O seu trinâgulo é Equilátero!');
        }else if(x != y && x != z && y != z){
          print('O seu triângulo é Escaleno!');
        }else{
          print('O seu triângulo é Isóceles!');
        }
        break;
      case 4: //Exercício 4
        print('Digite 3 números para saber qual o maior e qual o menor:');
        double x = double.parse(stdin.readLineSync(encoding: utf8)!);
        double y = double.parse(stdin.readLineSync(encoding: utf8)!);
        double z = double.parse(stdin.readLineSync(encoding: utf8)!);
        if(x >= y && x >= z ){
          double maior = x;
          if(y <= z){
            double menor = y;
            print('O maior número é $maior e o menor é $menor.');
          }else{
            double menor = z;
            print('O maior número é $maior e o menor é $menor.');
          }
        }else if(y >= x && y >= z){
          double maior = y;
          if(x <= z){
            double menor = x;
            print('O maior número é $maior e o menor é $menor.');
          }else{
            double menor = z;
            print('O maior número é $maior e o menor é $menor.');
          }
        }else{
          double maior = z;
          if(x <= y){
            double menor = x;
            print('O maior número é $maior e o menor é $menor.');
          }else{
            double menor = y;
            print('O maior número é $maior e o menor é $menor.');
          }
        }
        break;
      case 5: //Exercício 5
        double precoA = 4;
        double precoG = 5;
        double total;
        int x = 0;
        print('Digite quantos Litros foram vendidos:');
        double litros = double.parse(stdin.readLineSync(encoding: utf8)!);
        do{
          print('Digite o tipo de combustível (A para Álcool e G para Gasolina):');
          String tipo = stdin.readLineSync(encoding: utf8)!;
          switch(tipo){
            case 'A':
              if(litros <= 20){
                total = litros * precoA * 0.97;
                print('O valor a ser pago é $total');
                x++;
              }else{
                total = litros * precoA * 0.95;
                print('O valor a ser pago é $total');
                x++;
              }
              break;
            case 'G':
              if(litros <= 20){
                total = litros * precoG * 0.96;
                print('O valor a ser pago é $total');
                x++;
              }else{
                total = litros * precoG * 0.94;
                print('O valor a ser pago é $total');
                x++;
              }
              break;
            default:
              print('Combustível inválido');
              break;
        }
        }while(x == 0);
        break;
      case 6: //Exercício 6 
        var meses = ['janeiro', 'fevereiro', 'março', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro'];
        print('Digite um número de 1 a 12');
        int x = int.parse(stdin.readLineSync(encoding: utf8)!);
        print('O mês correspondente ao número é ${meses[x-1]}');
        break;
      case 7: //Exercício 7
        print('Digite a altura da pessoa');
        double alt = double.parse(stdin.readLineSync(encoding: utf8)!);
        print('Digite seu gênero (M para masculino e F para Feminino)');
        String gen = stdin.readLineSync(encoding: utf8)!;
        if(gen == 'M'){
          double peso = (72.7 * alt) - 58;
          print('O peso ideal dessa pessoa é $peso');
        }else{
          double peso = (62.1 * alt) - 44.7;
          print('O peso ideal dessa pessoa é $peso');
        }
        break;
      case 8: //Exercício 8
        print('Tabela de descontos da loja');
        int valor = 500;
        double desconto;
        for( var i=1; i<26; i++){
          desconto = valor - (valor *(i/100));
          print('R\$$valor ---- Desconto de $i% ---- Valor final: $desconto');
          valor = valor + 100;
        }
        break;
      case 9: //Exercício 9
        int maior = 0;
        for(var i=1; i<11; i++){
          print("Digite a idade da pessoa:");
          int idade = int.parse(stdin.readLineSync(encoding: utf8)!);
          if(idade>=18){
            maior++;
          }
        }
        print("O número de pessoas maiores de idade é $maior");
        break;
      case 10: //Exercício 10
        print('Digite o número de pessoas do grupo:');
        int x = int.parse(stdin.readLineSync(encoding: utf8)!);
        var p=[], s=[], t=[], q=[], u=[];
        for(var i=1; i<=x; i++){
          print('Digite a idade $iª da pessoa:');
          int idade = int.parse(stdin.readLineSync(encoding: utf8)!);
          if(idade<=15){
            p.add(idade);
          }else if(idade>=16 && idade<=30){
            s.add(idade);
          }else if(idade>=31 && idade<=45){
            t.add(idade);
          }else if(idade>=46 && idade<=60){
            q.add(idade);
          }else{
            u.add(idade);
          }
        }
        print('O total de pessoas de até 15 anos é de ${p.length}, que da um total de ${((p.length*100)/x).toStringAsFixed(2)}% do grupo');
        print('O total de pessoas entre 16 e 30 anos é de ${s.length}, que da um total de ${((s.length*100)/x).toStringAsFixed(2)}% do grupo');
        print('O total de pessoas entre 31 e 45 anos é de ${t.length}, que da um total de ${((t.length*100)/x).toStringAsFixed(2)}% do grupo');
        print('O total de pessoas entre 46 e 60 anos é de ${q.length}, que da um total de ${((q.length*100)/x).toStringAsFixed(2)}% do grupo');
        print('O total de pessoas acima de 60 anos é de ${u.length}, que da um total de ${((u.length*100)/x).toStringAsFixed(2)}% do grupo');
        break;
      case 11: //Exercício 11
        print('Digite um número:');
        int x = int.parse(stdin.readLineSync(encoding: utf8)!);
        int i = 1;
        print('Os números ímpares até $x são:');
        while(i<=x){
          print(i);
          i += 2;
        }
        i = 2;
        print('Os números pares até $x são:');
        while(i<=x){
          print(i);
          i += 2;
        }
        break;
      case 12:
        double i = 0, soma = 0, x = 0;
        while(i >= 0){
          print('Digite a idade da pessoa, -1 para sair');
          i = double.parse(stdin.readLineSync(encoding: utf8)!);
          if(i>=0){
            soma += i;
            x++;
          }
        }
        i = soma / x;
        print('A média de idade das pessoas é: $i');
        break;
      case 13:
        int soma = 0, x = 0;
        while(x <= 500){
          if(x%3 == 0 && x%2 == 1){
            soma += x;
          }
          x++;
        }
        print('A soma dos números ímpares multiplos de 3 entre 0 e 500 é igual a $soma.');
        break;
      case 14:
        print('Digite um número para saber seu fatorial:');
        int fatorial = 1, x = int.parse(stdin.readLineSync(encoding: utf8)!);
        for(i=x; i>=1; i--){
          fatorial *= i;
        }
        print('O fatorial de $x é igual a $fatorial');
        break;
      case 15:
        //double maior, menor;
        break;
      default:
        print('Exercício inexistente!');
        break;
    }  

  }while(i != 0);
}