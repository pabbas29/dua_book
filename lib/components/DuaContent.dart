import 'package:flutter/material.dart';

class DuaContent extends StatefulWidget {
  @override
  _DuaContentState createState() => _DuaContentState();
}

class _DuaContentState extends State<DuaContent> {

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(
        initialPage: 0,
      ),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'بِسْمِ اللّهِ الرَّحْمَنِ الرَّ حِيْمِ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange[300],
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Text(
                  'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orange[300],
                    fontSize: 24,
                  )
                ),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'اللّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّد',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange[300],
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Text(
                  'Ya Allah, sampaikanlah shalawat kepada Nabi Muhammad dan keluarga Nabi Muhammad',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.orange[300],
                    fontSize: 24,
                  )
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
