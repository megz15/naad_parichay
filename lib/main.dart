import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:naad_parichay/screens/about.dart';
import 'package:naad_parichay/screens/home.dart';
import 'package:naad_parichay/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naad Parichay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Naad Parichay'),
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
  late int _currentIndex;

  final List<Widget> _homeScreens = const [HomeScreen(), SearchScreen(), AboutScreen()];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void _changePage(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _homeScreens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        currentIndex: _currentIndex,
        onTap: _changePage,
        elevation: 8,
        tilesPadding: const EdgeInsets.symmetric(vertical: 8),
        opacity: 0.2,
        items: const <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.dashboard,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.dashboard,
              color: Colors.green,
            ),
            title: Text("Home"),
          ),
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              title: Text("Search")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurpleAccent,
              icon: Icon(
                Icons.question_mark,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.question_mark,
                color: Colors.deepPurpleAccent,
              ),
              title: Text("About")),
        ],
      ),
    );
  }
}
