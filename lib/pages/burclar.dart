import 'dart:math';

import 'package:flutter/material.dart';

class Koc extends StatefulWidget {
  @override
  State<Koc> createState() => _KocState();
}

class _KocState extends State<Koc> {
  List<String> kocbilgi = [
    'Hiçbir şey yapmayınca daha çok yoruluyor.',
    'Herkese güvenmediği için en çok kendisiyle konuşmayı seviyor.',
    'Herkes onu anlamadığı için sadece seçtiği  insanlarla muhattap oluyor.',
    'Geceyi çok sever,çünkü en çok geceleri insanlardan uzak kalıyor ve sakinleşiyor.',
    'Mutlu olmalı artık.',
    'Koç burcu bir ayrılıktan sonra hemen yeni bir ilişkiye başlayamaz.',
    'Koç, Burçlar kuşağının ilk burcudur.',
    ' Hareketli ve enerjik oluşları ile tanınırlar.',
    'Ben egoları çok fazla gelişmiştir.',
    'Bu burçta doğanlar çok pratiktirler.',
    'Olaylar karşısında coşkularını gizleyemezler.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.purple,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'KOÇ',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/koç.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  kocbilgi[Random().nextInt(11)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Oglak extends StatefulWidget {
  @override
  State<Oglak> createState() => _OglakState();
}

class _OglakState extends State<Oglak> {
  List<String> oglakbilgi = [
    'Geleceği ayrıntılı biçimde planlamaya çalışan Oğlaklar bu özellikleri nedeniyle sık sık kuruntulara kapılarak, depresyona girerler.',
    'İşleri ile aşırı meşgul olduklarından, insanlarla zor ilişki kurarlar.',
    'Hiçbir zaman kendilerini yalnız hissetmezle',
    'Oğlaklar ciddilikleri, tutuculukları ve güçlü iradeleri ile tanımlanırlar.',
    'Çalışkanlıkları ile kolaylıkla başkalarının saygısını kazanırlar. ',
    'Güvenilir ve dürüstlerdir',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'OĞLAK',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/oğlak.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  oglakbilgi[Random().nextInt(6)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Terazi extends StatefulWidget {
  @override
  State<Terazi> createState() => _TeraziState();
}

class _TeraziState extends State<Terazi> {
  List<String> terazibilgi = [
    'Kararsızlıkları ile ünlü cazibe sembolü karşınızda duruyor.',
    'Nedenini bilmediğiniz bir çekim gücü etkisi altına girdiğinizi fark ettiğinizde iş işten çoktan geçmiş olacaktır.',
    'Onların büyülü bir havası vardır.',
    'Ritmik hareketleri ile dans eder gibi bir yaşam sürerler.',
    'Onun yanında kızgınlıklarınız yok olur.',
    'En sinirli anınızda bile sizi regüle etme yeteneğine sahiptir.',
    ' Üstelik, tartışmayı sevmesine rağmen; bu kadar ustalıkla konulara hakim olup, sonrada sesini hiç yükseltmeden zaferini ilen eden çok az kişi vardır.',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.greenAccent,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'TERAZİ',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/terazi.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  terazibilgi[Random().nextInt(7)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Yay extends StatefulWidget {
  @override
  State<Yay> createState() => _YayState();
}

class _YayState extends State<Yay> {
  List<String> yaybilgi = [
    'Kavrama yetenekleri gelişmiştir.',
    'Özellikle ciddi işlerde ve felsefe konularında başarılı olurlar.',
    'Yay burcu insanları içtenlikleri ve iyimser yaşam görüşleri ile tanınırlar.',
    'Gençliklerinde dikkatsiz, heyecanlı ve geleneklere aykırı davranışlar içinde olurlar.',
    'Geçmiş yanılgılarından en çok ders alan kişiler bu burçtan çıkar.',
    'Özgürlüklerine aşırı düşkün, patavatsızlık derecesinde pratik insanlardır.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'YAY',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/yay.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  yaybilgi[Random().nextInt(6)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Yengec extends StatefulWidget {
  @override
  State<Yengec> createState() => _YengecState();
}

class _YengecState extends State<Yengec> {
  List<String> yengecbilgi = [
    'Sorumluluk duyguları çok gelişmiştir.',
    'Her işte olağanüstü olan ayrıntıcılıkları, işlerinde mükemmeliyetçiliği getirir. Ayni sorumlulukları karşılarındakilerden de beklerler.',
    'Yengeçler duygusallıkları ve duyarlılıkları ile tanınırlar.',
    'Çevresindeki her insandan da ayni hassasiyeti bekledikleri için, kolay geçinilir tipler değildir.',
    'İyi günlerinde neşeli, iyi kalpli, yardımsever, düşünceli ve anlayışlıdırlar.',
    ' Herhangi belirgin bir neden olmadan somurtkan ve alıngan olabilirler.',
    'Yakınlarını ve arkadaşlarını çok sevmelerine karşın, bunu pek belli etmezler.',
    'Kendilerini herhangi bir şekilde inciten kişileri zor bağışlarlar ve yapılan hareketi asla unutmazlar.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'YENGEÇ',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/yengeç.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  yengecbilgi[Random().nextInt(8)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Kova extends StatefulWidget {
  @override
  State<Kova> createState() => _KovaState();
}

class _KovaState extends State<Kova> {
  List<String> kovabilgi = [
    'Hayal güçleri sınırsız olmakla birlikte, düşünceleri bulundukları anın ötesinde, akılcı ve sezgiseldir.',
    'Kovalar dik kafalıdırlar.',
    'Kendilerini dinleyenlerin ne demek istediklerini anlamadıklarını sanırlar.',
    'Kova burcu insanları sevecen tavırları ile tanınırlar.',
    'Bu kişiler bencil değildirler.',
    'Irk, cinsiyet ve sosyal durumuna bakmaksızın, herkesin ayni olanaklara sahip olmasını isterler.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'KOVA',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/kova.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  kovabilgi[Random().nextInt(6)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Ikizler extends StatefulWidget {
  @override
  State<Ikizler> createState() => _IkizlerState();
}

class _IkizlerState extends State<Ikizler> {
  List<String> ikizlerbilgi = [
    'İkizler burcu insanları hızlı düşüncelerine uygun çabuk hareket ederler.',
    'Ayni anda birkaç işi birden yapabilirler.',
    'Onların adapte olamayacakları iş yoktur.',
    'Bu yüzden değişik karakterli olmaları ile tanınırlar.',
    'Son derece neşeli ve mutlu oldukları bir anda, aniden mutsuz olabilirler.',
    'Çevreleri tarafından sürekli yanlış anlaşılabilirler.',
    'Herhangi bir konuda bilgileri az bile olsa, bunu çok iyi gizlemeyi başarırlar.',
    'Aksine; kulaktan dolma duydukları bilgileri öyle ustaca anlatırlar ki, dinleyenler onları o işin uzmanı sanırlar.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'İKİZLER',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/ikizler.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  ikizlerbilgi[Random().nextInt(8)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Boga extends StatefulWidget {
  @override
  State<Boga> createState() => _BogaState();
}

class _BogaState extends State<Boga> {
  List<String> bogabilgi = [
    'Boğalar hedefleri doğrultusunda ilerlerken, tüm dikkatlerini toplayabilme yeteneklerinin yanında maddecilikleri ile tanınırlar.',
    'SAHİP olma onların yaşam gerçekleridir.',
    'Bireysel ilişkiler konusunda son derece güvenilir olan Boğalar, insanlara yardım etmekten hoşlanırlar.',
    ' Yaşamları boyunca güven ararlar ve bu yüzden kendilerini riske atmazlar.',
    'Amaçladıkları işler konusunda gösterdikleri sabır, bazen diğer kişileri çatlatacak boyutlarda olabilir.',
    'Bütün bunlara rağmen çevresi tarafından aranılan, sıcakkanlı inslardır. '
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'BOĞA',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/boğa.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  bogabilgi[Random().nextInt(6)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Basak extends StatefulWidget {
  @override
  State<Basak> createState() => _BasakState();
}

class _BasakState extends State<Basak> {
  List<String> basakbilgi = [
    'Yönetici gezegeninizden dolayı hep bilgiyi ararlar.',
    'Zekalarını kendilerine yardımcı olan bir hizmetçi gibi görürler.',
    'Başaklar çalışkan ve pratik insanlar olup, yaşamlarındaki en önemli konu İştir.',
    'Güvendikleri kişilere yardım etmeyi sevmelerine rağmen, inanmadıkları ve tembel olduklarını bildikleri kişilere karşı soğuk davranırlar.',
    'Yaşamları boyunca dinlenmeden çalışırlar.',
    'Onların dinlenme biçimi bile başkalarına yorucu gelebilir.',
    'Başakların yaşamda ayrıntılar arasında boğulma riskleri hep vardır.',
    'Başaklar, genellikle kendilerini hiç kimseye kullandırtmazlar.',
    'Tutumlulukları bazen pintilik derecesindedir.',
    'İçli-dışlı olmayı sevmedikleri için, soğuk ve mesafeli bir görünüşleri vardır.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.brown,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'BAŞAK',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/başak.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  basakbilgi[Random().nextInt(10)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Balik extends StatefulWidget {
  @override
  State<Balik> createState() => _BalikState();
}

class _BalikState extends State<Balik> {
  List<String> balikbilgi = [
    'Sabır, eli açıklık ve duyarlılık bu burçta doğan kişilerin en önemli nitelikleridir.',
    'Büyük bir inandırma yetenekleri vardır.',
    'Dürüst, vicdan sahibi, sadık ve uysaldırlar.',
    'Her çevreye kolayca uyabilirler.',
    'Genellikle hayal dünyasında yaşarlar.',
    'Yaşam görüşleri ciddi fakat gerçekçi değildirler.',
    'Balık burcu, diğer burçlar arasında dış etkenlerden en çok etkilenen kişilerdir.',
    'Düş dünyasında, öylesine mutludur ki, bazen onun aptal olduğunu bile düşünebilirsiniz.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'BALIK',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/balık.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  balikbilgi[Random().nextInt(8)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Aslan extends StatefulWidget {
  @override
  State<Aslan> createState() => _AslanState();
}

class _AslanState extends State<Aslan> {
  List<String> aslanbilgi = [
    'Aslan kraldır, önderdir.',
    ' Başkalarının yaşantılarını da onlar adına düzenlemek isterler.',
    ' Her şeye karışırlar, kibirlidirler.',
    'Yaşam sahnesinde her zaman parlayarak, odak noktası olmak isterler.',
    'Organizasyon güçleri çok fazladır.',
    'Ona karşı hatalı davransanız bile, size olgun bir şekilde tepki verir.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'ASLAN',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/aslan.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  aslanbilgi[Random().nextInt(6)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}

class Akrep extends StatefulWidget {
  @override
  State<Akrep> createState() => _AkrepState();
}

class _AkrepState extends State<Akrep> {
  List<String> akrepbilgi = [
    'Akrepler kadar yaşamda tutkuyla yaşayan az insan vardır.',
    'Hiçbir şeyi yarım bırakmazlar.',
    'Akreplerin güçleri gözlerinden okunur.',
    'Mimiklerini kontrol altında tutsalar bile, bakışları ile sevgilerini ya da nefretlerini aktarabilirler.',
    'Duygularına kapılırlarsa, tehlikeli olabilirler.',
    'Akrepler ukala ve kendini beğenmiş insanları sevmezler ,onları aşağılayarak hadlerini bildirirler.',
    ' Kendi bildiklerini okuyarak, uzlaşmaya yanaşmazlar.',
    ' Aşırı bir şekilde kuşkuculardır, kolay inanmazlar ama inandıkları bir konuyu da sonuna kadar inatla savunurlar.'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.pink,
          appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Center(
                  child: Text(
                'AKREP',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ))),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Image.asset('assest/images/akrep.png'),
                SizedBox(height: 50),
                FlatButton(
                    color: Colors.yellow,
                    highlightColor: Colors.red,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      child: Text('BAŞKA BİLGİ GETİR'),
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(10),
                    )),
                RaisedButton(
                    child: Text(
                      'Geri Dön',
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                SizedBox(height: 20),
                Text(
                  akrepbilgi[Random().nextInt(8)],
                  style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Colors.black,
                      color: Colors.lime),
                )
              ])),
        ),
      ),
    );
  }
}
