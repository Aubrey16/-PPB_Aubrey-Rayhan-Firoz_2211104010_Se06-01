int hitungKPK(int a, int b) {
  int gcd(int x, int y) {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }

  return (a * b) ~/ gcd(a, b);
}

void main() {
  int a = 12;
  int b = 8;
  print("KPK $a dan $b = ${hitungKPK(a, b)}");
}
