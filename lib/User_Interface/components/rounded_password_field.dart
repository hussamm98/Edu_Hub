import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  TextEditingController passController = new TextEditingController();
  String hint;

  RoundedPasswordField(String s, [TextEditingController t]) {
    this.hint = s;
    this.passController = t;
  }

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.passController,
        obscureText: false,
        keyboardType: TextInputType.text,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              password ? Icons.visibility : Icons.visibility_off,
              color: Color(0xFF6F35A5),
            ),
            // 3shan t3'yeer l icons
            onPressed: () {
              setState(() {
                password = !password; // 3shan t5tfy w trg3 tany
              });
            },
          ),
        ),
      ),
    );
  }
}
