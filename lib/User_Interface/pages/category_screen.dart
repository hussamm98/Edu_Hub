import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/my_semester.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          '   Materials Of Science',
          style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        ),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Semester(index)),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 15,
                        spreadRadius: 30,
                        offset: Offset(3, 4))
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/logo.jpg",
                    fit: BoxFit.fill,
                    width: 60,
                    height: 100,
                  ),
                  title: Text(
                    "Level ${index + 1}",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '    is my level.',
                        style: TextStyle(
                            fontSize: 14, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 1),
                      Container(
                        height: 28,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class Product {
  final image;
  final name;

  Product(this.image, this.name);
}

List products = [
  Product('', 'Level 1'),
  Product(
    '',
    'Level 2',
  ),
  Product('', 'Level 3'),
  Product('', 'Level 4'),
];
