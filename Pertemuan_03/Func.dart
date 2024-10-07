
//   List<String> daftarMahasiswa(){
//     List<String> Mahasiswa = ["Udin","Kasja","Kasnudin"];
//     return Mahasiswa;
//   }

// double sum(double a, double b) {
//   return a + b;
// }



// void main(List<String> args) {
//   print(sum(10, 20));
// }

// double rerata(List<double> a) {
//   double sum = 0;
//   for(int i = 0; i < a.length; i++) {
//     sum += a[i];
//   }
//   return sum / a.length;
// }

double rerata(List<double> a) => a.reduce((a, b) => a + b) / a.length;
