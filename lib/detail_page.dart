import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wtm_demo/data/speaker.dart';

class DetailPage extends StatelessWidget {
  final Speaker speaker;

  const DetailPage({Key key, this.speaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    child: Text(
                      speaker.name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  background: Hero(
                    tag: "speaker.${speaker.name}",
                    child: Image.asset(
                      "images/${speaker.picture}",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    speaker.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  speaker.description,
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
