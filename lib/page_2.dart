import 'package:flutter/material.dart';

import 'menu.dart';

class Page2 extends StatelessWidget {
  static const String routeName = '\page2';
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
