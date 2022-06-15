import 'package:flutter/material.dart';

class hakkinda extends StatelessWidget {
  const hakkinda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  color: Colors.deepOrange,
                  highlightColor: Colors.white12,
                  child: Text('Geri Git'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'HAKKINDA',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(),
              ],
            )),
        body: Center(
            child: Stack(children: [
          Image.asset('assest/images/Hakkınada.png'),
          Text(
            "Bu uygulama Selçuk Ünüversitesi,"
            "Bilgisayar Mühendisliği 2.sınıf"
            " 203301017 nolu öğrencisi olan"
            " Mahsum Akbulut tarafından yapılmıştır",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ])),
      ),
    );
  }
}
