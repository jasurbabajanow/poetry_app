import 'package:flutter/material.dart';
import 'package:poetry_app/pages/body_page.dart';
import 'package:poetry_app/pages/goshgy1.dart';
import 'package:poetry_app/pages/self.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    BodyPage(),
    Goshgy1(),
    Self(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontFamily: 'Times New Roman'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Times New Roman'),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Esasy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Şygyrlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Biz barada',
          )
        ],
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(255, 106, 199, 63),
        onTap: _onItemTapped,
      ),
    );
  }
}
