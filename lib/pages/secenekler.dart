import 'package:flutter/material.dart';
import 'package:sonproje1/file_download_view.dart';

import 'package:sonproje1/pages/grafikler.dart';

import 'package:sonproje1/pages/secimekrani.dart';

class Secenekler extends StatefulWidget {
  Secenekler();
  @override
  State<Secenekler> createState() => _SeceneklerState();
}

class _SeceneklerState extends State<Secenekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar:
          AppBar(backgroundColor: Colors.purple, title: Text('SEÇENEK EKRANI')),
      body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 200,
                  height: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(40.0),
                            child: Text('Burç Pdf İndir'),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FileDownloadView()),
                        );
                      }),
                ),
                Container(
                  width: 200,
                  height: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(40.0),
                            child: Text('Burç Bilgi'),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecimEkrani()),
                        );
                      }),
                ),
                Container(
                  width: 200,
                  height: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(40.0),
                            child: Text('Burç Grafik'),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Grafikler()),
                        );
                      }),
                ),
              ],
            ),
          ])),
    );
  }
}
