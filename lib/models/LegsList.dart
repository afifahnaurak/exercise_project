import 'package:flutter/material.dart';

class LegsList {
  int id, chefs;
  String name, description, imageSrc, recipes;
  Color color;

  LegsList(
      {this.id,
      this.chefs,
      this.recipes,
      this.name,
      this.description,
      this.imageSrc,
      this.color});
}

// Demo list
List<LegsList> legsList = [
  LegsList(
    id: 1,
    chefs: 16,
    recipes: "30 detik",
    name: "Squats",
    description: "Berdiri dengan kaki terbuka lebar.Jaga posisi punggung tetap lurus.Tekuk lutut dan turunkan bokong hingga hampir menyentuh lantai.Tahan pada posisi tersebut selama beberapa detik.Naikkan ke posisi berdiri.Ulangi gerakan tersebut sebanyak 10 kali.",
    imageSrc: "assets/images/squats.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  LegsList(
    id: 2,
    chefs: 8,
    recipes: "30 - 45 detik",
    name: "Split Squats",
    description: "Berdiri, dan letakkan kursi atau meja kecil sejauh dua kaki di belakang tubuh.Posisikan kaki kanan di atas kursi atau meja.Tekuk lutut kiri hingga menyentuh lantai.Jangan lupa untuk menjaga tulang belakang tetap lurus.Tahan posisi tersebut, kemudian naikkan ke posisi awal.Ganti dengan kaki kanan.Ulangi sebanyak 10 kali di setiap sisi kaki. ",
    imageSrc: "assets/images/split-squats.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  LegsList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Calf Raise",
    description: "Caranya adalah start dengan posisi dan jinjit semakismal mungkin dengan ujung kaki sebagai tumpuannya.Jaga agar tulang belakang tetap lurus.Tahan posisi ini selama beberapa detik.",
    imageSrc: "assets/images/calf-raise.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  LegsList(
    id: 4,
    chefs: 10,
    recipes: "30 detik",
    name: "Side Leg Raises",
    description: "Berbaring miring dan luruskan kaki.Angkat kaki ke arah langit-langit.Kemudian turunkan perlahan.Pastikan area pinggul dan pantat terangkat.Ulangi 12 kali di setiap sisi. ",
    imageSrc: "assets/images/side-leg-raises.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  LegsList(
    id: 5,
    chefs: 10,
    recipes: "30 detik",
    name: "Side Lunges",
    description: "Berdiri dengan kaki selebar pinggul, dan jaga punggung tetap lurus.Ambil langkah besar ke samping.Pastikan tubuh tetap tegak dan turunkan lutut kaki hingga 90 derajat.Tahan dada pada posisi lurus dan kencang.Ulangi di sisi lainnya.Lakukan gerakan sebanyak 3 kali di setiap sisi. ",
    imageSrc: "assets/images/side-lunges.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  
];
