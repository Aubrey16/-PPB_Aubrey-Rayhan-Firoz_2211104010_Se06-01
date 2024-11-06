import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Banyumas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rekomendasi Wisata'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showDescriptionDialog(String title, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildTourismCard(
            title: 'Germanggis',
            imageUrl: 'https://dolanbanyumas.banyumaskab.go.id/assets/gambar_objek/agro-wisata-germanggis.jpg',
            description: 'Germanggis adalah sebuah kawasan wisata alam berkonsep wisata fun education. Ditempat ini kita bisa menikmati alam bebas yang udaranya sangat sejuk namun juga bisa mengadakan camping ceria.',
          ),
          _buildTourismCard(
            title: 'Depo Bay',
            imageUrl: 'https://visitjawatengah.jatengprov.go.id/assets/images/796f1bd9-93cd-4918-b501-b592f7db1ada.jpg',
            description: 'Wisata renang yang terbuka untuk umum yang berada di Depo Pelita Sokaraja.',
          ),
          _buildTourismCard(
            title: 'Dreamland',
            imageUrl: 'https://awsimages.detik.net.id/community/media/visual/2023/07/22/cicalengka-dreamland_169.jpeg?w=1200',
            description: 'Musim kemarau dan panas bikin kita pengen yang seger-seger, kan? Nah, Dreamland bisa jadi pilihan yang cocok untuk bermain air dan berwisata.',
          ),
          _buildTourismCard(
            title: 'Goa Maria Kaliori',
            imageUrl: 'https://dolanbanyumas.banyumaskab.go.id/assets/gambar_objek/goa-maria-kaliori.jpg',
            description: 'Terletak di perbukitan yang hijau dengan suasana sejuk dan nyaman di desa Kaliori Kecamatan Kalibagor.',
          ),
          _buildTourismCard(
            title: 'Hutan Pinus Limpakuwus',
            imageUrl: 'https://cdn.idntimes.com/content-images/community/2022/07/fromandroid-7274a684475582789d2727bd3d1e4ac4.jpg',
            description: 'Jika kalian datang ke Hutan Pinus Limpakuwus yang berada di lereng Gunung Slamet ini, kalian pasti ngga akan kecewa.',
          ),
        ],
      ),
    );
  }

  Widget _buildTourismCard({
    required String title,
    required String imageUrl,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () => _showDescriptionDialog(title, description),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
