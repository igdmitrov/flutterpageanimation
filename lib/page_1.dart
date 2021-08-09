import 'package:flutter/material.dart';

import 'menu.dart';

class Page1 extends StatelessWidget {
  static const String routeName = '\page1';
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
