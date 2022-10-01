//import 'package:planetas/planetas.dart' as planetas;

import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  //print("\x1B[2J\x1B[0;0H");
  final planets = <Map<String, dynamic>>[];
  String option = "";
  do{
    print(
    '''
      1) Adicionar planeta
      2) Remover planeta
      3) Atualizar planeta
      4) Mostrar lista completa
      5) Mostrar planeta específico
      0) Sair
    ''',
    );
    option = stdin.readLineSync(encoding: utf8)!;

    switch(option){
      case '1':
        addPlanet(myList: planets);
        break;
      case '2':
        if(planets.isNotEmpty){
          print('Qual planeta você deseja remover?');
          showAll(planets);

          int remove = int.parse(stdin.readLineSync(encoding: utf8)!);
          if(remove-1 > planets.length){
            print('Planeta inexistente');
          }else{
            print(planets[remove-1]);
            print('''
              Deseja mesmo remover esse planeta?
              1) Sim
              2) Não
            ''');
            final delete = stdin.readLineSync(encoding: utf8)! == "1" ? true: false;

            if(delete){
              planets.removeAt(remove - 1);
              print('Item removido com sucesso');
            }
          }
        }
        break;
      case '3':
        /*print('Qual planeja você deseja atualizar?');
        String nome = stdin.readLineSync(encoding: utf8)!;
        for(int i = 0; i < planets.length; i++){
          if(planets[i]['name'] == nome){
            
          }
        }*/
        attPlanet(myList: planets);
        break;
      case '4':
        showAll(planets);
        break;
      case '5':
        print('Qual planeja você deseja ver?');
        String nome = stdin.readLineSync(encoding: utf8)!;
        for(int i = 0; i < planets.length; i++){
          if(planets[i]['name'] == nome){
            showPlanet(planets[i]);
          }
        }
        break;
    }

  }while(option!='0');
}

  void addPlanet({required List<Map>myList}){
    String name = validation('nome');
    String dimension = validation('dimensão');
    String galaxy = validation('galaxia');
    String distanceSun = validation('distância do sol');
    String dayLength = validation('duração do Dia');
    
    final map = <String, dynamic>{
      'name': name,
      'dimension': int.parse(dimension),
      'galaxy': galaxy,
      'distanceSun': int.parse(distanceSun),
      'dayLength': int.parse(dayLength),
    };
    myList.add(map);
    print('Planeta: $name adicionado!');
  }

  String validation(String info){
    print('Digite o $info do planeta para ser adicionado');
    String name = stdin.readLineSync(encoding: utf8)!;
    while(name.isEmpty){
      name = stdin.readLineSync(encoding: utf8)!;
    }

  return name;
  }

  void showAll(List<Map<String, dynamic>> myList){
    if(myList.isEmpty){
      print('Sua Lista está vazia');
      return;
    }
    print('Seus planetas são: ');
    for(int i = 0; i < myList.length; i++ ){
      print('${i + 1}º planeta:\n');
      showPlanet(myList[i]);
    }
  }

  void showPlanet(Map<String, dynamic> planet){

    print('Nome: ${planet['name']}');
    print('Dimensão: ${planet['dimension']}');
    print('Galáxia: ${planet['galaxy']}');
    print('Distância do Sol: ${planet['distanceSun']}');
    print('Duração do dia: ${planet['dayLength']}\n');
  }
  
  void attPlanet({required List<Map<String, dynamic>> myList}){
      if(myList.isNotEmpty){
        showAll(myList);
        print('Qual planeta deseja atualizar?');
        int att = int.parse(stdin.readLineSync(encoding: utf8)!);
        if (att > myList.length || att < 1) {
          print("Planeta inexistente na lista!");
        return;
        }
        print('O planeta a ser atualizado é :');
        showPlanet(myList[att - 1]);
        print('Digite qual campo quer alterar, se não quiser alterar nada, digite sair',);
        String newValue = stdin.readLineSync(encoding: utf8)!.toLowerCase();
        if(newValue == 'sair'){
          return;
        }
        if(newValue == 'nome'){
          myList[att- 1]['name'] = updated('nome');
        }else if(newValue == 'dimensão'){
          myList[att- 1]['dimension'] = updated('dimensão');
        }else if(newValue == 'galáxia'){
          myList[att- 1]['galaxy'] = updated('galáxia');
        }else if(newValue == 'distância do sol'){
          myList[att- 1]['distanceSun'] = updated('distância do Sol');
        }else if(newValue == 'duração do dia'){
          myList[att- 1]['dayLength'] = updated('duração do dia');
        }
        print('O planeta ${myList[att-1]['name']} foi atualizado com sucesso');
        showAll(myList);
      }else{
        print('Não há itens para serem editados');
      }
  }
  
  String updated(String info){
    print('Digite o $info do planeta para ser atualizado');
    String name = stdin.readLineSync(encoding: utf8)!;
    while(name.isEmpty){
      name = stdin.readLineSync(encoding: utf8)!;
    }

  return name;
  }