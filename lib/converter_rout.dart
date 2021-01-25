import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:hello_rectangle/unit.dart';

class ConverterRout extends StatefulWidget {

  final String name;
  final Color color;
  final List<Unit> units;

  const ConverterRout(
      {@required this.name, @required this.color, @required this.units})
      : assert(name != null),
        assert(color != null),
        assert(units != null);

  @override
  State<StatefulWidget> createState() {
    return _ConverterRoutState();
  }
}

class _ConverterRoutState extends State<ConverterRout>{

  @override
  Widget build(BuildContext context) {

    final unitWidgets = widget.units.map((Unit unit){
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}