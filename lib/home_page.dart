import 'package:flutter/material.dart';
import 'package:wtm_demo/first_page.dart';
import 'package:wtm_demo/second_page.dart';

class WtmHomePage extends StatefulWidget {
  @override
  _WtmHomePageState createState() => _WtmHomePageState();
}

class _WtmHomePageState extends State<WtmHomePage> {
  int _currentIndex = 0;

  Widget pages() {
    switch (_currentIndex) {
      case 0:
        return FirstPageView();
      case 1:
        return SecondPageView();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Women Techmakers KZ 2021"),
        centerTitle: true,
      ),
      body: pages(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Speakers"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
