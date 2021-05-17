import 'package:flutter/material.dart';

import '../components/doctor_description.dart';

class DetailPage extends StatefulWidget {
  final int index;

  DetailPage({Key key, this.index}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        backgroundColor: Colors.black,
        splashColor: Colors.grey,
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Container(
          //width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(doctormenu[widget.index].image),
                )),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.9),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                ),
              ),
              Container(
                height: height,
                width: width,
                margin: EdgeInsets.only(top: height * 0.55),
                padding: EdgeInsets.all(60),
                decoration: BoxDecoration(
                  color: Color(0xfff0e3ca),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      doctormenu[widget.index].name,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Center(
                      child: Text(
                        "Number Of Courses :   6969",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Center(
                      child: Text(
                        "Assigned Courses :",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      doctormenu[widget.index].courses,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1,
                          wordSpacing: 0),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 10,
                top: height * 0.06,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_rounded,
                    size: 32,
                    color: Colors.white,
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
