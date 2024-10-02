/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/tugas01_base.dart';

import 'dart:io';

void main() {

  print("Masukkan nilai: ");
  

  int nilai = int.parse(stdin.readLineSync()!);
  
  if(nilai > 70 ){
    print("nilai A");
  }else if(nilai > 40 && nilai <= 70 ){
    print("nilai B");
  }else if(nilai > 0 && nilai <= 40){
    print("nilai C");
  }else{
    print("Kosong");
  }
  

}

// TODO: Export any libraries intended for clients of this package.
