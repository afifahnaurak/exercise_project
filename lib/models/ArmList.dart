import 'package:flutter/material.dart';

class ArmList {
  int id, chefs;
  String name, description, imageSrc, recipes;
  Color color;

  ArmList(
      {this.id,
      this.chefs,
      this.recipes,
      this.name,
      this.description,
      this.imageSrc,
      this.color});
}

// Demo list
List<ArmList> armList = [
  ArmList(
    id: 1,
    chefs: 16,
    recipes: "30 detik",
    name: "Triceps Kickbacks",
    description: "Latihan ini menargetkan otot kecil yang ada di bawah lengan, atau yang dikenal sebagai triceps.Pegang dumbbell dengan posisi telapak tangan ke dalam lalu tekuk lutut sedikit. Kunci perut dan tundukkan torso hingga punggung dan pinggul sejajar. Fokus jaga kekuatan di pinggul sambil menjaga posisi punggung tetap lurus.",
    imageSrc: "assets/images/triceps-kickbacks.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  ArmList(
    id: 2,
    chefs: 8,
    recipes: "30 - 45 detik",
    name: "Biceps Curls",
    description: "Berdirilah dengan kaki terbuka selebar bahu sambal memegang botol berisi air atau dumbel dengan kedua lengan dalam posisi lurus di kedua sisi tubuh.Tekuk kedua lengan ke atas secara perlahan hingga posisi botol setinggi bahu.Tahan untuk beberapa detik, kemudian turunkan kembali.Ulangi 5 kali dan lakukan sebanyak 3 set. ",
    imageSrc: "assets/images/biceps-curls.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  ArmList(
    id: 3,
    chefs: 10,
    recipes: "30 detik",
    name: "Push Up",
    description: "Luruskan kedua lengan agar sejajar dengan bahu dan beri jarak cukup lebar antara kedua telapak tangan di lantai.Jaga tubuh agar membentuk garis lurus dari kepala hingga tumit.Luruskan tungkai dan jaga agar lutut tidak menempel pada lantai.Turunkan badan dengan menekuk siku hingga dada turun sekitar 5 cm di atas lantai.Tahan beberapa saat,kemudian luruskan siku kembali.Ulangi gerakan ini 10–15 kali. ",
    imageSrc: "assets/images/push-up.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  ArmList(
    id: 4,
    chefs: 10,
    recipes: "30 detik",
    name: "Bench Dip",
    description: "Angkat badan dengan bertumpu pada kedua tangan hingga bokong tidak menempel pada bantalan kursi.Bawa tubuh lebih maju, lalu rendahkan hingga berada di depan kursi dengan kedua tangan tetap berpegangan pada kursi.Kencangkan lengan dan angkat tubuh kembali duduk di kursi.Ulangi gerakan ini sebanyak 10–15 kali. ",
    imageSrc: "assets/images/bench-dip.png",
    color: Color.fromARGB(255, 135, 174, 115),
  ),
  
];
