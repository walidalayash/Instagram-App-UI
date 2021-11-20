import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Instagram',
      theme: ThemeData(),
      home: const MyHomePage(title: 'UI Instagram'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    //my pages
    Home(),
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      //number page
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          //icon bar
          BottomNavigationBarItem(
              icon: Image.asset("asset/images/home.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("asset/images/search.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("asset/images/reels.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("asset/images/activity.png"), label: ""),
          BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Container(
                    height: 30,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(65.0),
                      child: Image.asset(
                        "asset/images/person.jpg",
                        width: 110.0,
                        height: 110.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              label: ""),
        ],
        backgroundColor: Colors.black,
        //to make it fixed do not move
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
