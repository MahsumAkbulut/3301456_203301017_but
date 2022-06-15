import 'package:flutter/material.dart';
import 'burclar.dart';

class SecimEkrani extends StatefulWidget {
  String ad, soyad;
  SecimEkrani({required this.ad, required this.soyad});
  @override
  State<SecimEkrani> createState() => _SecimEkraniState();
}

class _SecimEkraniState extends State<SecimEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar:
          AppBar(backgroundColor: Colors.purple, title: Text('SEÇİM EKRANI')),
      body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("Hoşgeldin",
                style: TextStyle(fontSize: 40, color: Colors.black54)),
            SizedBox(
              height: 20,
            ),
            Text(widget.ad + "  " + widget.soyad,
                style: TextStyle(fontSize: 40, color: Colors.black54)),
            SizedBox(
              height: 50,
            ),
            Text(
              'BURCUNU SEÇ ',
              style: TextStyle(fontSize: 50, color: Colors.orangeAccent),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                    color: Colors.red,
                    child: Text('KOÇ'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Koc()),
                      );
                    }),
                RaisedButton(
                    color: Colors.red,
                    child: Text('BOĞA'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Boga()),
                      );
                    }),
                RaisedButton(
                    color: Colors.red,
                    child: Text('İKİZLER'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ikizler()),
                      );
                    }),
                RaisedButton(
                    color: Colors.red,
                    child: Text('YENGEÇ'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Yengec()),
                      );
                    }),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                    child: Text('ASLAN'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Aslan()),
                      );
                    }),
                RaisedButton(
                    child: Text('BAŞAK'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Basak()),
                      );
                    }),
                RaisedButton(
                    child: Text('TERAZİ'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Terazi()),
                      );
                    }),
                RaisedButton(
                    child: Text('AKREP'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Akrep()),
                      );
                    }),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                    color: Colors.blueGrey,
                    child: Text('YAY'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Yay()),
                      );
                    }),
                RaisedButton(
                    color: Colors.blueGrey,
                    child: Text('OĞLAK'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Oglak()),
                      );
                    }),
                RaisedButton(
                    color: Colors.blueGrey,
                    child: Text('KOVA'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kova()),
                      );
                    }),
                RaisedButton(
                    color: Colors.blueGrey,
                    child: Text('BALIK'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Balik()),
                      );
                    }),
              ],
            ),
            RaisedButton(
              child: Text('Geri Dön'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ])),
    );
  }
}
