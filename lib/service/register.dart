import 'package:sonproje1/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:sonproje1/service/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
            title: Center(
                child: Text(
              'KAYIT EKRANI',
              style: TextStyle(color: Colors.white70),
            )),
            backgroundColor: Colors.indigo),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Kayıt Ol",
                    style: TextStyle(fontSize: 40, color: Colors.white60)),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                      hintText: "Kullanıcı Adı"),
                  controller: _nameController,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(),
                      hintText: "Email"),
                  controller: _emailController,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      hintText: "Şifre"),
                  controller: _passwordController,
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.password_sharp),
                      border: OutlineInputBorder(),
                      hintText: "Tekrar Şifre"),
                  controller: _passwordAgainController,
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    _authService
                        .createPerson(_nameController.text,
                            _emailController.text, _passwordController.text)
                        .then((value) {
                      return Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        //color: colorPrimaryShade,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                          child: Text(
                        "Kayıt Ol",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            //color: colorPrimaryShade,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(
                              child: Text(
                            "Geri Git",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
