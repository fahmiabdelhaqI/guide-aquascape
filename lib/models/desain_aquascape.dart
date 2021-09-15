class DesainAquascape {
  String name;
  String imageAsset;
  String description;
  List<String> namaTanaman;
  List<String> tanamanAquascape;

  // contructor
  DesainAquascape({
    this.name,
    this.imageAsset,
    this.description,
    this.namaTanaman,
    this.tanamanAquascape,
  });
}

var desainAquascapeList = [
  DesainAquascape(
    name: 'Nature Aquascape',
    imageAsset: 'images/nature.jpg',
    description:
        'Jenis aquascape ini sering pula disebut Natural Style atau Nature Aquarium Style adalah sebuah jenis aquascape yang muncul pertama kali di Jepang. Temanya mengadopsi konsep perkebunan Wabi Sabi',
    namaTanaman: [
      'Riccia Fluitans',
      'Cryotocoryne',
      'Glossostigma Elatinoides',
    ],
    tanamanAquascape: [
      'images/plant/riccia-fluitans.png',
      'images/plant/cryotocoryne.png',
      'images/plant/glossostigma_elatinoides.png',
    ],
  ),
  DesainAquascape(
    name: 'Jungle Aquascape',
    imageAsset: 'images/jungle.jpg',
    description:
        'Jungle Syle ini adalah Aquarium gaya hutan yang menggambarkan alam liar dengan penampilan yang tidak terkendali dari lingkungan air. Aquascape desain ini tidak memerlukan pemangkasan tanaman setiap hari nya. Tanaman dibiarkan tumbuh untuk memberikan tampilan alami dari pada dibuat-buat dengan memangkasnya. Seiring waktu, tanaman menjadi padat dan setelah aquarium mencapai tingkat keseimbangan tertentu, perawatan yang dibutuhkan semakin sedikit.',
  ),
  DesainAquascape(
    name: 'Dutch Aquascape',
    imageAsset: 'images/dutch.jpg',
    description:
        'Dutch Style  Merupakan sebuah desain Aquascape tertua yang dipakai oleh hampir seluruh aquascaper di negara asal nya yaitu Belanda. Aquascape Dutch Style atau yang bisa disebut juga sebagai Gaya Belanda ini memiliki ciri khusus dalam pembuatannya, yaitu tidak menggunakan bahan-bahan hardscape seperti Batu atau Kayu.',
  ),
  DesainAquascape(
    name: 'Iwagumi Aquascape',
    imageAsset: 'images/iwagumi.jpg',
    description:
        'Iwagumi Style Seperti yang sudah kami jelaskan di artikel sebelumnya, bahwa dalam membangun desain Iwagumi Style ini tidak sembarang batu bisa dimasukkan untuk dijadikan hardscape. Iwagumi memiliki jenis batu tersendiri untuk di desain, seperti Oyaishi, Fukuishi, Soeishi, dan Suteishi. Masing-masing batu tersebut memiliki peranan tersendiri dan tidak bisa acak dalam peletakannya.',
  ),
  // DesainAquascape(
  //   name: 'Jungle Design',
  //   imageAsset: 'images/biotope.jpg',
  //   description: 'lololololololololol',
  // ),
];
