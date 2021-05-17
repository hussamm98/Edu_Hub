import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/rounded_button.dart';
import 'package:flutter_auth/User_Interface/components/rounded_input_field.dart';
import 'package:flutter_auth/User_Interface/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import '../components/background.dart';
import 'login_screen.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Change Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: size.height * 0.02),
              SvgPicture.asset(
                "assets/icons/changepassword.svg",
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.01),
              RoundedInputField(
                hintText: "Your Email",
              ),
              RoundedPasswordField(" Current Password "),
              RoundedPasswordField(" New Password "),
              SizedBox(
                height: size.height * 0.00001,
              ),
              RoundedPasswordField("Confirm New Password"),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                text: "Confirm ",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
