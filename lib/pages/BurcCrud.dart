import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BurcCrud extends StatefulWidget {
  const BurcCrud({Key? key}) : super(key: key);

  @override
  State<BurcCrud> createState() => _BurcCrudState();
}

class _BurcCrudState extends State<BurcCrud> {
  FirebaseFirestore burcdatabase = FirebaseFirestore.instance;
  TextEditingController isimcontroller = TextEditingController();
  TextEditingController burccontroller = TextEditingController();
  TextEditingController idcontroller = TextEditingController();

  TextEditingController guncellecontroller = TextEditingController();
  TextEditingController guncelleidcontroller = TextEditingController();
  TextEditingController guncelleisimcontroller = TextEditingController();
  TextEditingController guncelleburccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference burcref = burcdatabase.collection('Burclar');

    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            backgroundColor: Colors.indigoAccent,
            centerTitle: true,
            title:
                Text("Kullanıcı Ekleme", style: TextStyle(color: Colors.black)),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.add_box),
              ),
              Tab(icon: Icon(Icons.update_outlined)),
              Tab(icon: Icon(Icons.delete_outlined)),
            ]),
          ),
          body: TabBarView(children: <Widget>[
            //CREATE
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: idcontroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.perm_identity),
                                hintText: "Id girin",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            TextFormField(
                              controller: isimcontroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.drive_file_rename_outline),
                                hintText: "İsim Girin",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            TextFormField(
                              controller: burccontroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.balance),
                                hintText: "Burc Girin",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(20, 30),
                                  primary: Colors.greenAccent),
                              child: Text("Kişiyi Ekle",
                                  style: TextStyle(color: Colors.blueGrey)),
                              onPressed: () async {
                                //text alanındaki verilerden map oluşturmalıyız
                                Map<String, dynamic> burcdata = {
                                  'ID': idcontroller.text,
                                  'İsim': isimcontroller.text,
                                  'Burc': burccontroller.text,
                                };
                                print(idcontroller.text);
                                print(isimcontroller.text);
                                print(burccontroller.text);

                                //veriyi yazmak istediğimiz referansa ulaşacagız ve
                                //ilgili metodu çağıracağız
                                await burcref
                                    .doc(idcontroller.text)
                                    .set(burcdata);
                              },
                            ),
                            SizedBox(
                              height: 40,
                              width: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //UPDATE
            Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 110),
                    TextField(
                      controller: guncellecontroller,
                      decoration: InputDecoration(
                        icon: Icon(Icons.update),
                        hintText: "Güncellmek istediğiniz ID girin",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: guncelleidcontroller,
                      decoration: InputDecoration(
                        icon: Icon(Icons.u_turn_right_sharp),
                        hintText: "ID girin",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: guncelleisimcontroller,
                      decoration: InputDecoration(
                        icon: Icon(Icons.nest_cam_wired_stand),
                        hintText: "İsim Girin",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: guncelleburccontroller,
                      decoration: InputDecoration(
                        icon: Icon(Icons.balance),
                        hintText: "Burc Girin",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(20, 30),
                          primary: Colors.greenAccent),
                      child: Text("Kişiyi Güncelle",
                          style: TextStyle(color: Colors.blueGrey)),
                      onPressed: () async {
                        Map<String, dynamic> guncelburcdata = {
                          'ID': guncelleidcontroller.text,
                          'İsim': guncelleisimcontroller.text,
                          'Burc': guncelleburccontroller.text
                        };
                        await burcref
                            .doc(guncellecontroller.text)
                            .update(guncelburcdata);
                      },
                    )
                  ],
                ),
              ),
            ),

            //DELETE
            Column(
              children: [
                StreamBuilder<QuerySnapshot>(
                  stream: burcref.snapshots(),
                  builder: (context, AsyncSnapshot asyncsnapshot) {
                    if (asyncsnapshot.hasError) {
                      return Text("HATA");
                    } else {
                      if (asyncsnapshot.hasData) {
                        List<DocumentSnapshot> dokumanlistesi =
                            asyncsnapshot.data.docs;
                        return Flexible(
                          child: ListView.builder(
                            itemCount: dokumanlistesi.length,
                            itemBuilder: (context, index) {
                              if (!asyncsnapshot.hasData) {
                                return Text("Loading");
                              } else {
                                return Card(
                                    color: Colors.white,
                                    child: ListTile(
                                      title: Text(
                                          '${dokumanlistesi[index].data()}'),
                                      trailing: IconButton(
                                          icon: Icon(Icons.delete),
                                          onPressed: () async {
                                            await dokumanlistesi[index]
                                                .reference
                                                .delete();
                                          }),
                                    ));
                              }
                            },
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
//koleksiyonlara -->CollectionReferance ile
//dökümanlara -->DocumentReferance ile ulaşıyoruz
