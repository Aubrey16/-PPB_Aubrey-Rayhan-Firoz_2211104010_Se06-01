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
      home: const MyHomePage(title: 'Rekomendasi Wisata Banyumas'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            floating: true,
            centerTitle: true,
            title: Text(widget.title),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTouristCard(
                    'Germanggis',
                    'https://dolanbanyumas.banyumaskab.go.id/assets/gambar_objek/agro-wisata-germanggis.jpg',
                    'Germanggis adalah sebuah kawasan wisata alam berkonsep wisata fun education. Di tempat ini kita bisa menikmati alam bebas yang udaranya sangat sejuk namun juga bisa mengadakan camping ceria.',
                  ),
                  _buildTouristCard(
                    'Depo Bay',
                    'https://visitjawatengah.jatengprov.go.id/assets/images/796f1bd9-93cd-4918-b501-b592f7db1ada.jpg',
                    'Wisata renang yang terbuka untuk umum yang berada di Depo Pelita Sokaraja.',
                  ),
                  _buildTouristCard(
                    'Dreamland',
                    'https://awsimages.detik.net.id/community/media/visual/2023/07/22/cicalengka-dreamland_169.jpeg?w=1200',
                    'Dreamland bisa jadi pilihan yang cocok untuk bermain air dan berwisata. Di sini, kita dapat menikmati berbagai rekreasi air bak berada di pantai.',
                  ),
                  _buildTouristCard(
                    'Goa Maria Kaliori',
                    'https://dolanbanyumas.banyumaskab.go.id/assets/gambar_objek/goa-maria-kaliori.jpg',
                    'Terletak di perbukitan hijau dengan suasana sejuk dan nyaman di desa Kaliori Kecamatan Kalibagor.',
                  ),
                  _buildTouristCard(
                    'Hutan Pinus Limpakuwus',
                    'https://cdn.idntimes.com/content-images/community/2022/07/fromandroid-7274a684475582789d2727bd3d1e4ac4.jpg',
                    'Wisata alam Hutan Pinus Limpakuwus tidak akan mengecewakan. Berada di lereng Gunung Slamet, tempat ini menawarkan udara sejuk.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTouristCard(String title, String imageUrl, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
