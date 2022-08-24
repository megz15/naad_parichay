import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const <Widget>[
          Card(
            color: Colors.white,
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Fact of the day:\n\n'
                  'Lorem Ipsum Dolor Sit Amet\n'
                  'Lorem Ipsum Dolor Sit Amet\n'
                  'Lorem Ipsum Dolor Sit Amet\n'
                  'Lorem Ipsum Dolor Sit Amet'),
            ),
          ),
        ],
      ),
    );
  }
}
