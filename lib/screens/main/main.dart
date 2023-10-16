import 'package:flutter/material.dart';
import 'package:usaha_kreatif_indonesia/screens/screens.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const route = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _activeIndex = 0;

  final _pages = const <Widget>[
    HomePage(),
    StatisticPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex,
        onTap: (index) {
          setState(() {
            _activeIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistic',
          )
        ],
      ),
    );
  }
}
