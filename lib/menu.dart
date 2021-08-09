import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Page 1'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(Page1.routeName);
          },
        ),
        ListTile(
          title: Text('Page 2'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(Page2.routeName);
          },
        ),
      ],
    );
  }
}
