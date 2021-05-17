import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/bottom_navigation.dart';
import 'package:flutter_auth/User_Interface/components/drawer.dart';
import 'package:flutter_auth/User_Interface/components/profile_items.dart';
import 'package:flutter_auth/User_Interface/pages/UserModel.dart';
import 'package:flutter_auth/User_Interface/pages/home.dart';
import 'package:flutter_auth/User_Interface/pages/schedule_screen.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  final UserModel user;

  const ProfileScreen({Key key, this.user}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //print('user name: ${widget.user.name}');
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.pinkAccent,
            ),
            // drawer: MyDrawer(
            //   user: this.widget.user,
            // ),
            // floatingActionButton: FloatingActionButton(onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return ScheduleScreen();
            //       },
            //     ),
            //   );
            // }),
            backgroundColor: Colors.pinkAccent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: _height / 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('${widget.user.imageUrl}'),
                            radius: _height / 10,
                          ),
                          SizedBox(
                            height: _height / 40,
                          ),
                          Text(
                            '${widget.user.name}',
                            style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: _height / 2.7),
                    child: new Container(
                      color: Colors.white,
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 3.2,
                        left: _width / 20,
                        right: _width / 20),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          decoration: new BoxDecoration(
                              color: Colors.white70,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 5.0,
                                    offset: new Offset(0.0, 2.0))
                              ]),
                          child: new Padding(
                            padding: new EdgeInsets.all(_width / 20),
                            child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  headerChild('GCH', 110),
                                  headerChild('Level', 4),
                                  headerChild('GPA', 2.69),
                                ]),
                          ),
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(top: _height / 20),
                          child: new Column(
                            children: <Widget>[
                              infoChild(_width, "assets/icons/email.svg",
                                  '${widget.user.email}'), // hereeeeeee
                              infoChild(_width, "assets/icons/phone.svg",
                                  '${widget.user.name}'),
                              // hereeeeee

                              infoChild(_width, "assets/icons/id.svg",
                                  '${widget.user.academicid}'),
                              // hereeeeeee
                              infoChild(_width, "assets/icons/department.svg",
                                  '${widget.user.department}'),
                              // hereeeeee
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
