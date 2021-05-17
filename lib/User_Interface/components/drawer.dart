import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/assistants_list.dart';
import 'package:flutter_auth/User_Interface/components/listing_doctor_users.dart';
import 'package:flutter_auth/User_Interface/components/rounded_button.dart';
import 'package:flutter_auth/User_Interface/pages/UserModel.dart';
import 'package:flutter_auth/User_Interface/pages/category_screen.dart';
import 'package:flutter_auth/User_Interface/pages/login_screen.dart';
import 'package:flutter_auth/User_Interface/pages/profile_screen.dart';
import 'package:flutter_auth/User_Interface/pages/schedule_screen.dart';
import 'package:flutter_svg/svg.dart';

import 'listing_assistant_users.dart';

class MyDrawer extends StatelessWidget {
  final UserModel user;

  const MyDrawer({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //print('drawer user name: ${user.name}');
    Size size = MediaQuery.of(context).size;
    return Drawer(
        child: Container(
      color: Color(0xffffe6e6),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xffffe6e6)),
            accountEmail: Text(
              '${user.email}',
              // "${user.email}",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            //code hereeeeeeeeeeeeeeeeeeeeeeeee
            accountName: Text(
              '${user.name}',
              // "${user.name} ", // code here
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 42.0,
              backgroundImage:
                  AssetImage('${user.imageUrl}'), //"${user.imageUrl}"),
            ),
          ),
          /*image:AssetImage("images/k.jpg")*/
          ListTile(
            title: Text(
              "Doctors",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/doctor.svg",
              width: 32,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AllOfDocs();
                  },
                ),
              );
            }, // here for navigaition ystaaaaaaa
          ),
          SizedBox(height: size.height * 0.001),
          Divider(
            color: Colors.black,
            indent: 30,
            endIndent: 30,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              "Assistant",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/assistant.svg",
              width: 32,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AllOfAssist();
                  },
                ),
              );
            }, // here for navigaition ystaaaaaaa
          ),
          SizedBox(height: size.height * 0.001),
          Divider(
            color: Colors.black,
            indent: 30,
            endIndent: 30,
            height: 0,
            thickness: 0.7,
          ),
          ListTile(
            title: Text(
              "Chat Bot",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/chat-bot.svg",
              width: 40,
            ),
            onTap: () {}, // here for navigaition ystaaaaaaa
          ),
          SizedBox(height: size.height * 0.001),
          Divider(
            color: Colors.black,
            indent: 30,
            endIndent: 30,
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(
              "Masseges",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/messenger.svg",
              width: 30,
            ),
            onTap: () {}, // here for navigaition ystaaaaaaa
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/user.svg",
              width: 30,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen(user: this.user);
                  },
                ),
              );
            }, // here for navigaition ystaaaaaaa
          ),
          ListTile(
            title: Text(
              "Schedule",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/schedule.svg",
              width: 30,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ScheduleScreen();
                  },
                ),
              );
            }, // here for navigaition ystaaaaaaa
          ),
          ListTile(
            title: Text(
              "Category",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/book.svg",
              width: 30,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CategoryScreen();
                  },
                ),
              );
            }, // here for navigaition ystaaaaaaa
          ),
          SizedBox(
            height: size.height * 0.12,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }
}
