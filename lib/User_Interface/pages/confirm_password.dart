import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/navigation_bar.dart';
import 'package:flutter_auth/User_Interface/components/rounded_button.dart';
import 'package:flutter_auth/User_Interface/components/rounded_input_field.dart';
import 'package:flutter_auth/User_Interface/components/rounded_password_field.dart';
import 'package:flutter_auth/User_Interface/pages/UserConfirm.dart';
import 'package:flutter_auth/User_Interface/pages/home.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/svg.dart';
import '../components/background.dart';

Future<UserConfirm> createUser(String curPass,String newPass) async {

  final String apiUrl = "http://hussam69-001-site1.dtempurl.com/api/ApiHAMController/ConfirmPassword" ;
  final response = await http.post(apiUrl,
    body:jsonEncode(<String,String> {
      "id":"ab4f74eb-933e-4ad3-bf84-6c4031c2ceb2",
      "UserName":"mrwan@mrwan.com",
      "CurrentPassword": curPass,
      "NewPassword": newPass
    }),
    headers: {
      'Content-Type': 'application/json',
      //'Authorization' : 'Bearer $token '


    },

  );

  if (response.statusCode == 200) {

    final String responseString = response.body;
    print(' RESPONSE STATUS =: ${response.statusCode}');
    print( 'RESPONSE body = ${response.body}');
    return userConfirmFromJson(responseString);
  }
  else {

    print('Error!');
    print(' RESPONSE STATUS =: ${response.statusCode}');
    print( 'RESPONSE body = ${response.body}');

    return null;
  }

}

class ConfirmPassword extends StatefulWidget {
  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}
class _ConfirmPasswordState extends State<ConfirmPassword> {
  final TextEditingController curPassController = new TextEditingController();
  final TextEditingController newPassController = new TextEditingController();
  UserConfirm _user1;
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
                "New Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/confirm.svg",
                height: size.height * 0.2,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedPasswordField(" New Password ",curPassController),
              SizedBox(
                height: size.height * 0.00001,
              ),
              RoundedPasswordField("Confirm New Password",newPassController),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                text: " Login ",
                press: () async {print(curPassController.text);
                print(newPassController.text);
                final String curPass = curPassController.text;
                final String newPass = newPassController.text;
                final UserConfirm user = await createUser(curPass,newPass);
                setState((){
                  _user1 = user;
                });
                  if(_user1.status=="true"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyBottomNavigationBar();
                      },
                    ),
                  );
                  } 
                },
              ),
          
           
                
              _user1==null? Container():
              Text("${_user1.status} "),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
