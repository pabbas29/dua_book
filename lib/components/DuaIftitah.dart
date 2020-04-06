import 'package:flutter/material.dart';

class DuaIftitah extends StatelessWidget {
  final List<String> texts = [
    {
      'id': '1',
      'ar_ar': 'بِسْمِ اللّهِ الرَّحْمَنِ الرَّ حِيْمِ',
      'id_id': 'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang',
    },
    {
      'id': '2',
      'ar_ar': 'اللّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَآلِ مُحَمَّدٍ',
      'id_id': 'Ya Allah, sampaikanlah shalawat kepada Nabi Muhammad dan keluarga Nabi Muhammad',
    },
  ];

  DuaIftitah({Key key, @required this.duas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${duas[ar_ar]}')
          )
        })
  }
}

