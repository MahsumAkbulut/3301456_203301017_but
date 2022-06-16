import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Grafikler extends StatefulWidget {
  const Grafikler({Key? key}) : super(key: key);

  @override
  State<Grafikler> createState() => _GrafiklerState();
}

class _GrafiklerState extends State<Grafikler> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> BurcDagilimi = Map();
    BurcDagilimi.putIfAbsent(
      "Aslan",
      () => 8,
    );
    BurcDagilimi.putIfAbsent("Oğlak", () => 6);
    BurcDagilimi.putIfAbsent("Boğa", () => 9);
    BurcDagilimi.putIfAbsent("Yay", () => 8);
    BurcDagilimi.putIfAbsent("İkizler", () => 7);
    BurcDagilimi.putIfAbsent("Koç", () => 6);
    BurcDagilimi.putIfAbsent("Balık", () => 10);
    BurcDagilimi.putIfAbsent("Terazi", () => 9);
    BurcDagilimi.putIfAbsent("Yengeç", () => 8);
    BurcDagilimi.putIfAbsent("Başak", () => 10);
    BurcDagilimi.putIfAbsent("Akrep", () => 8);
    BurcDagilimi.putIfAbsent("Kova", () => 11);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Burç Dağılım Grafiği")),
      body: SingleChildScrollView(
        child: Column(children: [
          PieChart(dataMap: BurcDagilimi),
          Text(
            "Dünyadaki Burç Dağılımı",
            style: TextStyle(color: Colors.red),
          )
        ]),
      ),
    );
  }
}
