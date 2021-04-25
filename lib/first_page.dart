import 'package:flutter/material.dart';

class FirstPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage("images/wtmlogo.webp"),
        width: 300,
      ),
    );
  }
}
