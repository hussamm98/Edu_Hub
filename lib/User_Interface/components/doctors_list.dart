import 'package:flutter/material.dart';
import 'doctor_description.dart';
import '../pages/doctors_cards.dart';

class MyDoctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: doctormenu.length,
        itemBuilder: (context, int key) {
          return DocMenuItemCard(index: key);
        },
      ),
    );
  }
}
