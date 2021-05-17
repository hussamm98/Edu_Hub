class Assistant {
  final String name;
  final String shortDesc;
  final String courses;
  final String image;

  Assistant({
    this.name,
    this.shortDesc,
    this.courses,
    this.image,
  });
}

List<Assistant> assistantmenu = [
  Assistant(
    name: "Kamel Abdelsalam",
    shortDesc: "Computer Science",
    courses: " Network , Algorithm , Compiler",
    image: "assets/icons/man.png",
  ),
  Assistant(
    name: "Nohair Mohamed",
    shortDesc: "Computer Science",
    courses: " C++ , Datamining",
    image: "assets/icons/female.jpg",
  ),
  Assistant(
    name: "Malak Sayed",
    shortDesc: "Computer Science",
    courses: "AI , Graphics , UML",
    image: "assets/icons/female.jpg",
  ),
];
