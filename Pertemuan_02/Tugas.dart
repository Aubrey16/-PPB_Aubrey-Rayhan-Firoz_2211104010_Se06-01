import 'dart:ffi';

void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

  double TotIpk = 0;
  int IsMa = 0;

  for (int i = 0; i < daftarMahasiswa.length; i++) {
    TotIpk += daftarMahasiswa[i]['ipk'];

    if (daftarMahasiswa[i]['isMarried'] == true) {
      IsMa += 1;
    }
  }

  double RataIpk = TotIpk / daftarMahasiswa.length;
  print(RataIpk);

  print(IsMa);
}
