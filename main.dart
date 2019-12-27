import 'package:truthordare/truthordare.dart' as truthordare;
import 'dart:io';
import 'dart:math';

main(List<String> arguments) {
  // print('Hello world: ${truthordare.calculate()}!');
  String choice;
  String jawaban;
  int hasilRandom;
  String lanjut = 't';
  var rnd = Random();

  List<String> truth = List();
  truth.add('Siapa nama kucingmu'); //0
  truth.add('Siapa nama mobilmu'); //1
  truth.add('Siapa nama bapakmu'); //2

  List<String> dare = List();
  dare.add('tampar adi'); //0
  dare.add('tampar yogta'); //1
  dare.add('tampar putra'); //2

  do{
  print('Pilih truth or dare t/d');
  choice = stdin.readLineSync();

  switch (choice) {
    case 't':
      hasilRandom = rnd.nextInt(truth.length - 1);
      print(truth[hasilRandom]);
      jawaban = stdin.readLineSync();
      print('jawabanmu $jawaban');
    break;
    case 'd':
      hasilRandom = rnd.nextInt(dare.length - 1);
      print(dare[hasilRandom]);
      jawaban = stdin.readLineSync();
      print('jawabanmu $jawaban');
    break;
  }

    do{
      print('mau main lagi?? y/t');
      lanjut = stdin.readLineSync();
      if(lanjut != 'y' && lanjut != 't'){
        print('Harus y/t');
      }
    }while(lanjut != 'y' && lanjut != 't');
  }while(lanjut == 'y');
}
