import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

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
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        currentIndex: currentIndex,
        onTap: changePage,
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
