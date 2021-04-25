import 'package:flutter/material.dart';
import 'package:wtm_demo/data/speaker.dart';
import 'package:wtm_demo/detail_page.dart';

foo(Speaker speaker, BuildContext context) {
  ListTile(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailPage(
            speaker: speaker,
          ),
        ),
      );
    },
    leading: CircleAvatar(
      backgroundImage: AssetImage("images/${speaker.picture}"),
    ),
    title: Text(speaker.name),
    subtitle: Text(speaker.title),
  );
}
