import 'package:flutter/material.dart';
import 'package:sonproje1/pages/FeedBack.dart';
import 'package:sonproje1/service/login.dart';
import 'hakkinda.dart';
import 'girisekrani.dart';

class ilkEkran extends StatelessWidget {
  const ilkEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
            color: Colors.deepOrange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text('203301017_MAHSUM AKBULUT'),
                SizedBox(),
              ],
            ),
            notchMargin: 30),
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "BURÇ APP",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Builder(builder: (context) {
                return RaisedButton(
                    color: Colors.pink,
                    highlightColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FeedBack()),
                      );
                    },
                    child: Container(child: Text('FeedBack')));
              }),
              Builder(builder: (context) {
                return RaisedButton(
                    color: Colors.pink,
                    highlightColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hakkinda()),
                      );
                    },
                    child: Container(child: Text('HAKKINDA')));
              }),
            ],
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 50),
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assest/images/indir.jpeg'),
            ),
            SizedBox(height: 50),
            Text(
              'BURÇ UYGUYLAMASI',
              style: TextStyle(
                  fontFamily: 'Hurricane', fontSize: 40, color: Colors.black),
            ),
            Container(
              width: 350,
              child: Divider(
                height: 30,
                color: Colors.black,
              ),
            ),
            Builder(builder: (context) {
              return Column(
                children: [
                  RaisedButton(
                      color: Colors.blue,
                      child: Text('BAŞLA'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => GirisEkran())));
                      }),
                  RaisedButton(
                      color: Colors.blueAccent,
                      highlightColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(child: Text('Çıkış Yap')))
                ],
              );
            }),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
