import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(BenimUygulamam());
}
class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Bugun Ne Yesem ',
            style: TextStyle(
              color: Colors.black,
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
  int CorbaNo = 1;
  int YemekNo = 1;
  int TatliNo = 1;
  List<String> CorbaAdlari = [
    'mercimek',
    'ezogelin',
    'domates',
    'tavuksuyu',
    'mercimek',
    'domates',
  ];
  List<String> YemekAdlari = [
    'TavukluPilav',
    'Tavuk Yemeği',
    'PatetesliBörek',
    'Nohut',
    'İçliKöfte',
  ];
  List<String> TatliAdlari = [
    'Cheacscake',
    'IslakKek',
    'Soğuk Baklava',
    'IslakKek',
    'IslakKek',
    'Soğuk Baklava',
    'Trileçe',
  ];
  void yemekleriYenile() {
    setState(() {
        CorbaNo = Random().nextInt(6) + 1;
        YemekNo = Random().nextInt(5) + 1;
        TatliNo = Random().nextInt(7) + 1;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/images/corba_$CorbaNo.jpg'),
              ),
            ),
          ),
          Text(
            CorbaAdlari[CorbaNo - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/images/yemek_$YemekNo.jpg'),
              ),
            ),
          ),
          Text(
            YemekAdlari[YemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/images/tatlı_$TatliNo.jpg'),
              ),
            ),
          ),
          Text(
            style: TextStyle(fontSize: 20),
            TatliAdlari[TatliNo - 1],
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}