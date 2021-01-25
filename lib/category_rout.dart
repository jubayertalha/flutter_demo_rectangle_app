import 'package:flutter/material.dart';

import 'package:hello_rectangle/category.dart';
import 'package:hello_rectangle/unit.dart';

class CategoryRout extends StatefulWidget {

  const CategoryRout();

  @override
  State<StatefulWidget> createState() {
    return _CategoryRoutState();
  }
}

class _CategoryRoutState extends State<CategoryRout>{

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _categoryColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _categoryIcons = <IconData>[
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
    Icons.cake,
  ];

  List<Unit> _retrieveUnitList(String categoryName){
    return List.generate(10, (int i){
      i+=1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    final _category = <Category>[];

    for (var i=0; i<_categoryNames.length; i++){
      _category.add(Category(_categoryNames[i], _categoryIcons[i], _categoryColors[i], _retrieveUnitList(_categoryNames[i])));
    }

    final listView = Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => _category[index],
          itemCount: _category.length,
      ),
    );

    final appBar = AppBar(
      title: Text(
          'Unite Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0
        ),
      ),
      backgroundColor: Colors.green[100],
      elevation: 0,
      centerTitle: true,
    );

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: appBar,
      body: listView,
    );
  }
}