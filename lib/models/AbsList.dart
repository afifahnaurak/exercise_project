import 'package:flutter/material.dart';

class AbsList {
  int id, chefs;
  String name, description, imageSrc, recipes;
  Color color;

  AbsList(
      {this.id,
      this.chefs,
      this.recipes,
      this.name,
      this.description,
      this.imageSrc,
      this.color});
}

// Demo list
List<AbsList> absList = [
  AbsList(
    id: 1,
    chefs: 16,
    recipes: "30 detik",
    name: "Plank",
    description: "Mulailah dengan tangan dan lutut di atas matras. Luruskan bahu Anda di atas pergelangan tangan Anda, dan pastikan pergelangan tangan Anda sejajar dengan bagian depan matras. Gerakkan lutut Anda ke belakang beberapa inci. Tarik pusar ke arah tulang belakang seolah-olah ada api di atas matras dan Anda mencoba menarik perut menjauh dari api. Selipkan jari-jari kaki Anda ke bawah dan angkat kaki Anda dari lantai. Peras paha depan Anda dan raih tumit Anda ke bagian belakang ruangan. Pastikan bahu Anda berada di atas pergelangan tangan Anda, dan Anda melihat beberapa inci di depan jari-jari Anda agar kepala dan leher Anda tetap memanjang. Tahan selama 30 detik.",
    imageSrc: "assets/images/plank.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  AbsList(
    id: 2,
    chefs: 8,
    recipes: "30 - 45 detik",
    name: "Side Plank",
    description: "Mulailah posisi plank dengan bahu di atas pergelangan tangan Anda. Tarik angkatan laut Anda ke arah tulang belakang, dan peluk kaki Anda bersamaan saat Anda mendekatkan kaki kiri untuk menyentuh kaki kanan. Belok ke tepi luar kanan kaki kanan, susun kaki kiri di atas. Tekan ke bawah melalui tangan kanan Anda, pertahankan tepat di bawah bahu kanan Anda, dan perlahan bawa tangan kiri ke pinggul kiri Anda. Tarik perut ke arah tulang belakang dan pinggul kanan menjauh dari lantai. Rentangkan lengan kiri lurus ke atas ke laangit-langit, dan tahan posisi selama 30-45 detik sebelum melewati plank dan berpindah sisi ",
    imageSrc: "assets/images/side-plank.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  AbsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Mountain Climbers",
    description: "Mulailah dalam posisi plank, jaga agar punggung tetap lurus, pinggul tetap rendah, dan inti tubuh Anda bergerak. Bawa lutut kanan Anda di bawah dada ke arah siku kanan Anda. Kembalikan kaki kanan Anda ke posisi papan; bawa kaki kiri Anda di bawah dada ke arah siku kiri Anda. Ulangi, bergantian kaki Anda dan pertahankan kecepatan tetap. Ingatlah untuk bernapas dan berkonsentrasi untuk melatih otot perut, bokong, dan paha belakang. ",
    imageSrc: "assets/images/mountain-climbers.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  AbsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Bird Dog",
    description: "Merangkak dengan telapak tangan tepat di bawah bahu dan lutut di bawah pinggul. Luruskan lengan kiri lurus ke depan dan kaki kanan ke belakang. Setelah itu, tekuk siku kiri dan lutut kanan, kencangkan otot perut hingga menyentuh bagian bawah perut. Ulangi menggunakan lengan kanan dan kaki kiri. Bergantian antar sisi, lakukan 10 kali di setiap sisi. ",
    imageSrc: "assets/images/bird-dog.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  AbsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Scissor kicks",
    description: "Berbaring telentang dengan kaki lurus ke atas ke arah langit-langit. Biarkan lengan Anda beristirahat di samping tubuh. Anda juga dapat meletakkan tangan di bawah bokong untuk meningkatkan stabilisasi. Peras inti Anda dan turunkan kedua kaki Anda 6-12 inci ke bawah sekitar sudut 45 derajat. Angkat satu kaki ke atas saat Anda menurunkan kaki lainnya ke lantai. Ganti kaki. Lanjutkan bergantian, gerakkan kaki Anda dengan gerakan mengepak. Ulangi sekitar 15 pengulangan, dan pastikan untuk tidak mempercepat saat Anda melakukannya. ",
    imageSrc: "assets/images/scissors.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  AbsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Side reaches",
    description: "Gerakan ini melatih otot inti bawah Anda. Berdirilah dengan kaki selebar pinggul dan lengan di samping tubuh. Letakkan tangan kanan di belakang kepala seperti yang Anda lakukan untuk crunch. Mulailah gerakkan tubuh Anda ke bawah ke arah kiri, tekan miring kiri, sehingga siku kanan Anda mengarah ke atas ke arah langit. Raih tangan kiri Anda ke bawah menuju tanah. Tahan posisi ini, remas perut, lalu ganti sisi. ",
    imageSrc: "assets/images/side-reaches.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  AbsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Reverse Chunches",
    description: "Dengan lutut ditekuk, tekan perut dan angkat kaki sehingga lutut berada di atas pinggul dengan sudut 90 derajat. Jaga agar betis Anda sejajar dengan matras sehingga kaki Anda berada di posisi atas meja. Libatkan inti Anda saat Anda mengangkat pinggul dan lutut ke arah dada. Pikirkan untuk memiringkan panggul Anda ke depan. Jaga seluruh tubuh bagian atas Anda di tanah. Pastikan hanya bagian terendah punggung Anda yang terangkat dari tanah; tidak ada yang lebih tinggi. Pertahankan kaki dalam sudut 90 derajat selama seluruh gerakan saat Anda turun kembali, melalui bagian atas meja, dan ketuk kaki di tanah. Ulangi langkah-langkah tersebut, ingat untuk bernapas perlahan sambil meremas perut Anda.",
    imageSrc: "assets/images/reverse-chunces.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
];
