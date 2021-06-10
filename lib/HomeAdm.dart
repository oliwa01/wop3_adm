import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'LeAluno.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeAdm extends StatefulWidget {
    @override
  _HomeAdmState createState() => _HomeAdmState();
}

class _HomeAdmState extends State<HomeAdm>  {
  AnimationController controller;


  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  //
  //
  @override
  bool page1 = true;
  bool page2 = false;
  bool page3 = false;

  Widget build(BuildContext context) {


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text("WOP3 - Desenvolvimento Humano"),
                  flexibleSpace: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          child: Icon(Icons.arrow_back,size: 40,color: Colors.white),
                          onPressed: () {

                          },
                        )
                      ],
                    ),
                  ),
                  bottom: TabBar(
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(icon: Icon(FontAwesomeIcons.angellist, size: 40.0)),
                      Tab(icon: Icon(
                          FontAwesomeIcons.audioDescription, size: 40.0))
                    ],
                  ),

                ),
                body: TabBarView(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListPage() ,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Videos Treinamentos', style: TextStyle(
                                    fontSize: 24.0, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10.0,),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {},
                                        child:
                                        AnimatedContainer(
                                            padding: EdgeInsets.all(10),
                                            width: 350.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: _bR,
                                            ),
                                            alignment: Alignment.center,
                                            duration: Duration(seconds: 3),
                                            curve: Curves.fastLinearToSlowEaseIn,
                                            child: Row(
                                              children: <Widget>[

                                                Icon(FontAwesomeIcons.raspberryPi,
                                                    size: 40.0),
                                                Text("      Orientação de Carreira",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    )
                                                )
                                              ],


                                            )

                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      //
                      //
                    ])
            )
        )
    );
  }
}
//
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}
//
class _ListPageState extends State<ListPage> {
  //
  Future getPosts() async {
    int currentTime;
    var db = Firestore.instance;
    DocumentReference documentReference = Firestore.instance.collection('aluno').document();
    QuerySnapshot qn = await
    db.collection("aluno")
        .getDocuments();
    return qn.documents;
  }

  //

  //

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
    double  font_adj1 =  (widthlua > 1600) ? 20 :
    (widthlua > 1500)  ?  20 :
    (widthlua > 1400)  ?  17 :
    (widthlua > 1300)  ?  18 :
    (widthlua > 1200)  ?  18 :
    (widthlua > 1100)  ?  19 :
    (widthlua > 1000)  ?  19 :
    (widthlua > 900)  ?  16 :
    (widthlua > 800)  ?  15 :
    (widthlua > 700)  ?  14 :
    (widthlua > 600)  ?  13 :
    (widthlua > 500)  ?  12 :  12 ;
    return Container(
        child: FutureBuilder(
            future: getPosts(),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loadding ......"),
                );
              }
              else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return Container(
                          padding: EdgeInsets.all(20),
                          width: 200,
                          height: 100,
                          color: (snapshot.data[index].data["t01"] ) ? Colors.green : Colors.blue,

                          child: ListTile(
                            leading: Icon((snapshot.data[index].data["t02"]) ? Icons.show_chart : Icons.sort , size: 40.0),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                            title: Text(snapshot.data[index].data["nome"],
                              style: TextStyle(
                                  fontSize: font_adj1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text(snapshot.data[index].data["email"] ),
                            onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LeAluno(
                                                snapshot.data[index].documentID,
                                                snapshot.data[index].data["email"],
                                                snapshot.data[index].data["nome"],
                                                snapshot.data[index].data["t01"],
                                                snapshot.data[index].data["t02"],
                                                snapshot.data[index].data["t03"],
                                                snapshot.data[index].data["t04"],
                                                snapshot.data[index].data["t05"],
                                                snapshot.data[index].data["t06"],
                                                snapshot.data[index].data["t07"],
                                                snapshot.data[index].data["t08"],
                                                snapshot.data[index].data["t09"],
                                                snapshot.data[index].data["t10"],
                                              snapshot.data[index].data["t11"],
                                              snapshot.data[index].data["t12"],
                                              snapshot.data[index].data["t13"],
                                              snapshot.data[index].data["t14"],
                                              snapshot.data[index].data["t15"],
                                              snapshot.data[index].data["t16"],
                                              snapshot.data[index].data["t17"],
                                              snapshot.data[index].data["t18"],
                                              snapshot.data[index].data["t19"],
                                              snapshot.data[index].data["t20"],
                                              snapshot.data[index].data["t21"],
                                              snapshot.data[index].data["t22"],
                                              snapshot.data[index].data["t23"],
                                              snapshot.data[index].data["t24"],
                                              snapshot.data[index].data["t25"],
                                              snapshot.data[index].data["t26"],
                                              snapshot.data[index].data["t27"],
                                              snapshot.data[index].data["t28"],
                                              snapshot.data[index].data["t29"],
                                              snapshot.data[index].data["t30"],
                                              snapshot.data[index].data["e01"],
                                              snapshot.data[index].data["e02"],
                                              snapshot.data[index].data["e03"],
                                              snapshot.data[index].data["e04"],
                                              snapshot.data[index].data["e05"],
                                              snapshot.data[index].data["e06"],
                                              snapshot.data[index].data["e07"],
                                              snapshot.data[index].data["e08"],
                                              snapshot.data[index].data["e09"],
                                              snapshot.data[index].data["e10"],
                                              snapshot.data[index].data["e11"],
                                              snapshot.data[index].data["e12"],
                                              snapshot.data[index].data["e13"],
                                              snapshot.data[index].data["e14"],
                                              snapshot.data[index].data["e15"],
                                              snapshot.data[index].data["e16"],
                                              snapshot.data[index].data["e17"],
                                              snapshot.data[index].data["e18"],
                                              snapshot.data[index].data["e19"],
                                              snapshot.data[index].data["e20"],
                                              snapshot.data[index].data["e21"],
                                              snapshot.data[index].data["e22"],
                                              snapshot.data[index].data["e23"],
                                              snapshot.data[index].data["e24"],
                                              snapshot.data[index].data["e25"],
                                              snapshot.data[index].data["e26"],
                                              snapshot.data[index].data["e27"],
                                              snapshot.data[index].data["e28"],
                                              snapshot.data[index].data["e29"],
                                              snapshot.data[index].data["e30"],
                                            )));
                              }
                            // onTap: () => navigateToDetail(snapshot.data[index])
                          )
                      );

                    }

                );
              }
            }
        )
    );
  }
}
//
class DetailPage extends StatefulWidget {

  final DocumentSnapshot post;
  DetailPage({this.post});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text(""),
          subtitle: Text(""),

        ),
      ),
    );
  }
}



