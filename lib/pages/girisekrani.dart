import 'package:flutter/material.dart';
import 'secimekrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkran(),
    );
  }
}

class GirisEkran extends StatefulWidget {
  @override
  State<GirisEkran> createState() => _GirisEkranState();
}

class _GirisEkranState extends State<GirisEkran> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("AD VE SOYAD GİRİNİZ",
                    style: TextStyle(fontSize: 40, color: Colors.white60)),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_box),
                      border: OutlineInputBorder(),
                      hintText: "AD GİRİNİZ"),
                  controller: t1,
                  keyboardType: TextInputType.name,
                  maxLength: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_box),
                      border: OutlineInputBorder(),
                      hintText: "SOYAD GİRİNİZ"),
                  controller: t2,
                  keyboardType: TextInputType.name,
                  maxLength: 15,
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                    color: Colors.green,
                    child: Text("Giriş Yap -->",
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecimEkrani(
                            ad: t1.text,
                            soyad: t2.text,
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text("<-- Geri Dön",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}