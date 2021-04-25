import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wtm_demo/data.dart';
import 'package:wtm_demo/data/speaker.dart';
import 'package:wtm_demo/detail_page.dart';

class SecondPageView extends StatefulWidget {
  @override
  _FirstPageViewState createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<SecondPageView> {
  List<Speaker> _speakerList;

  @override
  void initState() {
    super.initState();

    setState(() {
      _speakerList = jsonDecode(speakerJsonStr)
          .map<Speaker>((e) => Speaker.fromJson(e))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var speaker = _speakerList[index];
        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  speaker: speaker,
                ),
              ),
            );
          },
          leading: Hero(
            tag: "speaker.${speaker.name}",
            child: CircleAvatar(
              backgroundImage: AssetImage("images/${speaker.picture}"),
            ),
          ),
          title: Text(speaker.name),
          subtitle: Text(speaker.title),
        );
      },
      itemCount: _speakerList.length,
    );
  }
}

class WtmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StandardButton(),
        ],
      ),
    );
  }
}

class StandardButton extends StatefulWidget {
  @override
  _StandardButtonState createState() => _StandardButtonState();
}

class _StandardButtonState extends State<StandardButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Hello WTM!"),
      ),
    );
  }
}
