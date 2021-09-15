import 'package:flutter/material.dart';
import 'package:panduan_aquascape/widgets/rating/circle_back.dart';

class CreateAquascape extends StatelessWidget {
  final perlengkapan = [
    '- Aquarium',
    '- Lampu',
    '- Filter',
    '- Pasir / Soil',
    '- Pupuk Dasar / Pupuk Cair',
    '- Tanaman',
    '- Ikan',
    '- CO2',
    '- Pinset Panjang',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white70,
                    child: Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 0.0),
                    child: Text(
                      'Cara Membuat Aquascape',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('images/dutch.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Text(
                  'Alat & Bahan',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: perlengkapan.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          perlengkapan[index],
                        ),
                      ),
                    ],
                  );
                },
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Pertama',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Siapkan Aquarium terlebih dahulu'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage('images/aquarium.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Kedua',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Masukan Pupuk Dasar'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/masukan-pupuk-dasar.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Ketiga',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          'Tumpuk pupuk dasar dengan pasir malang atau soil'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/masukan-pasir-atau-soil.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Keempat',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          'Ratakan pasir atau soil dengan posisi bagian belakang lebih tinggi dari bagian depan'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/ratakan-pasir-atau-soil.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Kelima',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Masukan hardscape kayu atau batu'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/masukan-hardscape.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Keenam',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          'Masukan tanaman air sesuai selera anda dan jangan lupa gunakan pinset panjang agar lebih mudah dalam menancapkan tanaman'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image:
                                      AssetImage('images/masukan-tanaman.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Ketuju',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          'Masukan air perlahan dengan cara menaruh plastik diatas hardscape, agar tidak merusak tatanan hardscape kita'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage('images/masukan-air.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        'Langkah Pertama',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          'Lakukan pengurangan air selama awal tanam selama 1 minggu 2x, dengan mengurangi air setengah dari aquarium, agar hasil tanam semakin maksimal'),
                    ),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage('images/hasil-akhir.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
