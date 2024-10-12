import 'dart:math';


void Maturikusu(int A, int B) {


  List<List<int>> matriks = List.generate(A, (i) => List.generate(B, (j) => Random().nextInt(10)));


  print("Matriks $A x $B");
  matriks.forEach((row) => print(row));


  print("transpose");
  List<List<int>> transpose = List.generate(B, (i) => List.generate(A, (j) => matriks[j][i]));
  transpose.forEach((row) => print(row));
  for (int i = 0; i < B; i++) {
    for (int j = 0; j < A; j++) {
    }
  }
}

void main() {
  Maturikusu(3, 2);
}



