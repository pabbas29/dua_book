import 'package:flutter/material.dart';
//import 'DuaIftitah.dart';

class DuaContent extends StatefulWidget {
  @override
  _DuaContentState createState() => _DuaContentState();
}

class _DuaContentState extends State<DuaContent> {
  @override
  Widget build(BuildContext context) {
    return new PageView.builder(
      itemBuilder: (context, index) {
        return Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Line 1',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange[300],
                )
              ),
              Text(
                'Line 2',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.orange[300],
                )
              ),
            ],
          )
        );
      }
    );
  }
}