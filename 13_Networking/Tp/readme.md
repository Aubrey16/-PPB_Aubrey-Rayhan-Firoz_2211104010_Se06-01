1. Apa yang dimaksud dengan state management pada Flutter?  
 State management pada Flutter adalah proses pengelolaan dan pemantauan state (status/data) aplikasi,
 seperti nilai variabel, status UI, atau data yang ditampilkan, sehingga aplikasi dapat merespons perubahan tersebut dengan efisien.

2. Sebut dan jelaskan komponen-komponen yang ada di dalam GetX
GetX adalah pustaka Flutter yang serbaguna untuk state management, manajemen dependensi, dan navigasi

3. Lengkapilah code di bawah ini, dan tampilkan hasil outputnya serta jelaskan.

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

/// Controller untuk mengelola state counter
class CounterController extends GetxController {
  // Variabel untuk menyimpan nilai counter
  var counter = 0.obs;

  // Fungsi untuk menambah nilai counter
  void increment() {
    counter++;
  }

  // Fungsi untuk mereset nilai counter
  void reset() {
    counter.value = 0;
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App")),
      body: Center(
        child: Obx(() {
          // Menampilkan nilai counter
          return Text(
            "Counter Value: ${controller.counter}",
            style: const TextStyle(fontSize: 24),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Menambah nilai counter
              controller.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Mereset nilai counter
              controller.reset();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

penjelasan
CounterController: Controller untuk mengelola nilai counter dengan menggunakan obs (Reactive Variable) dari GetX.

counter adalah variabel reaktif.
increment menambah nilai counter.
reset mengatur ulang nilai counter ke 0.
Obx: Widget reaktif dari GetX yang memantau perubahan pada variabel reaktif counter.

FloatingActionButton:

Tombol add untuk menambah nilai counter.
Tombol refresh untuk mereset nilai counter.
