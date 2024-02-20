import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/favorit.dart';
import 'package:flutter_application_1/home/belanja.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dimas Shope',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: dasboard(),
    );
  }
}

class dasboard extends StatefulWidget {
  @override
  _dasboardState createState() => _dasboardState();
}

class _dasboardState extends State<dasboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PageWidget('Page 1'),
    belanja(),
    favorit(),
    PageWidget('Page 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dimas Shope'),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            title: Text("belanja"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorites"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("setting"),
            selectedColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final String title;

  PageWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
