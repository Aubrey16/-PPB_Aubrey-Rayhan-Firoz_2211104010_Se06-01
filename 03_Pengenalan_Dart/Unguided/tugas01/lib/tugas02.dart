import 'dart:io';

void main() {



print("nilainya coy : ");

  int nilai = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nilai; i++) {
    print(" " * ((nilai - 1 )- i) + " *" * (i + 1));
  }
}