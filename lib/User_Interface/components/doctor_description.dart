class Doctor {
  final String name;
  final String shortDesc;
  final String courses;
  final String image;

  Doctor({
    this.name,
    this.shortDesc,
    this.courses,
    this.image,
  });
}

List<Doctor> doctormenu = [
  Doctor(
    name: "Dr/Hatem Bahig",
    shortDesc: "Master Of Computer Science",
    courses: " Network , Algorithm , Cryptography",
    image: "assets/icons/man.png",
  ),
  Doctor(
    name: "Dr/Dawlat Abdelaziz",
    shortDesc: "Computer Science",
    courses: " C++ , Datamining",
    image: "assets/icons/female.jpg",
  ),
  Doctor(
    name: "Dr/Wael Zakaria",
    shortDesc: "Computer Science",
    courses: " Network , Algorithm , Compiler",
    image: "assets/icons/man.png",
  ),
  Doctor(
    name: "Dr/Mohamed Hashim",
    shortDesc: "Computer Science",
    courses: "Front-End , UML , Java",
    image: "assets/icons/man.png",
  ),
  Doctor(
    name: "Dr/Diaa L.Nasser",
    shortDesc: "Computer Science",
    courses: "Back-End , Cryptography , CyberSecurity",
    image: "assets/icons/man.png",
  ),
  Doctor(
    name: "Dr/Azza Mohamed",
    shortDesc: "Computer Science",
    courses: "Syntax , Ai , Automata",
    image: "assets/icons/female.jpg",
  ),
];
