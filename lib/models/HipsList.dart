import 'package:flutter/material.dart';

class HipsList {
  int id, chefs;
  String name, description, imageSrc, recipes;
  Color color;

  HipsList(
      {this.id,
      this.chefs,
      this.recipes,
      this.name,
      this.description,
      this.imageSrc,
      this.color});
}

// Demo list
List<HipsList> hipsList = [
  HipsList(
    id: 1,
    chefs: 16,
    recipes: "30 detik",
    name: "Squat Jumps",
    description: "Berdiri dengan kaki selebar pinggul dan lengan di samping tubuh.Tarik bahu dan tulang belikat ke bawah.Jaga posisi punggung bawah tetap lurus, dengan lutut sedikit ditekuk.Turunkan tubuh hingga ke posisi jongkok. Tahan posisi selama beberapa detik.Lakukan gerakan 2 hingga 4 set dengan 6 hingga 12 repetisi..",
    imageSrc: "assets/images/squat-jump.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  HipsList(
    id: 2,
    chefs: 8,
    recipes: "30 - 45 detik",
    name: "Lunge",
    description: "Berdiri tegak dengan tubuh bagian atas lurus, bahu rileks, dan dagu dalam posisi terangkat. Posisikan satu kaki ke depan dengan pinggul perlahan-lahan diturunkan sampai kedua lutut ditekuk pada sudut kira-kira 90 derajat. Pastikan bahwa lutut lainnya tidak menyentuh tanah. Semua berat badan harus dijaga pada tumit dengan lutut yang menerjang tetap sejajar dengan pergelangan kaki. Setelah langkah ini selesai, ulangi empat langkah sebelumnya dengan kaki lainnya. ",
    imageSrc: "assets/images/lunge.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  HipsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Hip Thrust",
    description: "Mulailah dengan berbaring dengan punggung atas bertumpu pada bench, dan telapak kaki menginjak lantai di depan kamu. Pegang barbell di lipatan pinggul kamu. Lalu, turunkan pinggul agar otot pinggul hampir menyentuh lantai. Dengan menekan kedua tumit dan mengencangkan otot pinggul, kembalikan barbell ke posisi awal. ",
    imageSrc: "assets/images/hip-thrust.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  HipsList(
    id: 4,
    chefs: 10,
    recipes: "30 detik",
    name: "Glute Bridges",
    description: "Cara melakukan latihan kekuatan untuk otot pinggul ini adalah dengan berbaring telentang dengan lutut ditekuk, dan lengan di samping. Kemudian, dengan mengencangkan inti tubuh kamu, dorong panggul ke atas sambil mengencangkan glute. Tahan selama 2 detik, lalu turunkan pinggul kembali ke lantai. ",
    imageSrc: "assets/images/glute-bridges.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  
  
];
