import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:hello_rectangle/converter_rout.dart';
import 'package:hello_rectangle/unit.dart';

class Category extends StatelessWidget{
  
  String _name;
  IconData _icon;
  Color _color;
  List<Unit> _units;

  Category(this._name,this._icon,this._color,this._units);

  void _navigateToConverter(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute<Null>(
        builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              elevation: 1.0,
              title: Text(
                  _name,
                  style: Theme.of(context).textTheme.display1,
              ),
              centerTitle: true,
              backgroundColor: _color,
            ),
            body: ConverterRout(name: _name, color: _color, units: _units),
          );
        }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: ()=> _navigateToConverter(context),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            splashColor: _color,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    _icon,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    _name,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}