import 'package:flutter/material.dart';

import 'package:hello_rectangle/category_rout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryRout(),
    );
  }
}
