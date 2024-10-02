import 'dart:io';

void main() {
  print("nilainya coy : ");

  int nilai = int.parse(stdin.readLineSync()!);

  if(nilai % 2 != 0 && nilai % nilai == 0){
    print("prima");
  }else{
    print("bukan prima");
  }

}