import 'dart:convert';
import 'package:flutter/material.dart';

class DuaContent extends StatefulWidget {
  @override
  _DuaContentState createState() => _DuaContentState();
}

class _DuaContentState extends State<DuaContent> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new FutureBuilder(
          future: DefaultAssetBundle
            .of(context)
            .loadString('data/duaiftitah.json'),
          builder: (context, snapshot) {
            var mydata = jsonDecode(snapshot.data.toString());

            return new PageView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                        child: new Text(
                          mydata[index]['arabic'],
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.orange[300],
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: new Text(
                          mydata[index]['indonesian'],
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.orange[300],
                          )
                        ),
                      )
                    ],
                  )
                );
              },
              itemCount: mydata.length,
            );
          },
        ),
      ),
    );
  }
}