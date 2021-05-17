import 'package:flutter/material.dart';

import '../pages/assistant_cards.dart';
import 'assistant_description.dart';

class MyAssistants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: assistantmenu.length,
        itemBuilder: (context, int key) {
          return AsMenuItemCard(index: key);
        },
      ),
    );
  }
}
