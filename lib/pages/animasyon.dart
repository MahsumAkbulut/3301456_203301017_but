import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sonproje1/pages/BurcCrud.dart';
import 'package:sonproje1/pages/ilkekran.dart';
import 'package:sonproje1/service/LoginPage.dart';

class animasyon extends StatefulWidget {
  const animasyon({Key? key}) : super(key: key);

  @override
  State<animasyon> createState() => _animasyonState();
}

class _animasyonState extends State<animasyon> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: screenSize.width,
            child: RiveAnimation.asset(
              'assest/animation/new_file.riv',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
