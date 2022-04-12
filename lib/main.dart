import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(BenimUygulamam());
}
class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo=1;
  int yemekNo=1;
  int tatliNo=1;

  List<String> corbaAdlari=[
    'Mercimek Çorbası',
    'Yayla Çorbası',
    'Tarhana Çorbası',
    'Brokoli çorbası',
    'Süt corbası'
  ];

  List<String> yemekAdlari=[
    'Balık',
    'Börek',
    'Dolma',
    'Şiş Kebap',
    'Köfte'
  ];

  List<String> tatliAdlari=[
    'Şekerpare',
        'Baklava',
        'Sütlü Tatlı',
        'Trileçe',
        'Sarma pasta'
  ];

  void yemekleriYenile(){
    setState(() {
      corbaNo=Random().nextInt(5)+1;
      yemekNo=Random().nextInt(5)+1;
      tatliNo=Random().nextInt(5)+1;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
              highlightColor: Colors.white,
              splashColor: Colors.white,
              onPressed:yemekleriYenile
                , child:  Image.asset('assets/çorba_$corbaNo.jpg')),
            ),
          ),
          Text(
          corbaAdlari[corbaNo-1],
          style: TextStyle(fontSize: 20),
          ),
          Container(
    width: 200,
            child: Divider(
            height: 5,
            color: Colors.black
            ),
          ),
          Expanded(child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
    highlightColor: Colors.white,
    splashColor: Colors.white,
    onPressed:yemekleriYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg')),
          ),
          ),
    Text(
    yemekAdlari[yemekNo-1],
    style: TextStyle(fontSize: 20),
    ),
    Container(
    width: 200,
      child: Divider(
      height: 5,
      color: Colors.black
      ),
    ),
          Expanded(child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: FlatButton(
              highlightColor: Colors.white,
              splashColor: Colors.white,
              onPressed: yemekleriYenile
               , child: Image.asset('assets/tatlı_$tatliNo.jpg')),
          ),
          ),
          Text(
            tatliAdlari[tatliNo-1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
                height: 5,
                color: Colors.black
            ),
          ),

        ],
      ),
    );
  }
}
