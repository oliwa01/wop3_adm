import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:starbewebapp/DISC/GraficosDisc.dart';
import 'package:starbewebapp/graficos/GraficosP01.dart';
import 'package:starbewebapp/graficos/GraficosP02.dart';
import 'package:starbewebapp/graficos/GraficosP03.dart';
import 'package:starbewebapp/graficos/GraficosP04.dart';
import 'package:starbewebapp/graficos/GraficosP05.dart';
import 'package:starbewebapp/graficos/GraficosP06.dart';
import 'package:starbewebapp/graficos/GraficosP07.dart';
import 'package:starbewebapp/graficos/GraficosP08.dart';
import 'package:starbewebapp/graficos/GraficosP09.dart';
import 'package:starbewebapp/graficos/GraficosP14.dart';
import 'package:starbewebapp/graficos/GraficosP14F.dart';
import 'package:starbewebapp/graficos/GraficosP15.dart';
import 'package:starbewebapp/graficos/GraficosP16.dart';
import 'package:starbewebapp/graficos/GraficosP17.dart';
import 'package:starbewebapp/graficos/GraficosP18.dart';
import 'package:starbewebapp/graficos/GraficosP19.dart';
import 'package:starbewebapp/graficos/GraficosP20.dart';
import 'package:starbewebapp/graficos/GraficosP21.dart';
import 'package:starbewebapp/graficos/GraficosP22.dart';
import 'package:starbewebapp/graficos/GraficosP23.dart';
import 'package:starbewebapp/graficos/GraficosP24.dart';
import 'package:starbewebapp/graficos/GraficosTM.dart';
import 'package:starbewebapp/graficos/GraficosP10.dart';
import 'package:starbewebapp/graficos/GraficosP11.dart';
import 'package:starbewebapp/graficos/GraficosP12.dart';
import 'package:starbewebapp/graficos/GraficosP13.dart';
import 'package:starbewebapp/resultados/RedultaPD1.dart';
import 'package:starbewebapp/resultados/ResultaDce.dart';
import 'package:starbewebapp/resultados/ResultaDt1.dart';



import '../DISC/ResultadosDisc.dart';

import '../HomeAdm.dart';
import '../LeAluno.dart';
import 'ResultaPL1.dart';


class ResultadosAdm extends StatefulWidget {
  String _codAluno;
  ResultadosAdm(this._codAluno);
  @override
  _ResultadosAdmState createState() => _ResultadosAdmState();
}

class _ResultadosAdmState extends State<ResultadosAdm>  {
  AnimationController controller;


  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  //
  //
  @override
  bool page1 = true;
  bool page2 = false;
  bool page3 = false;

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
    (widthlua > 900)  ?  10 :
    (widthlua > 800)  ?  9 :
    (widthlua > 700)  ?  9 :
    (widthlua > 600)  ?  9 :
    (widthlua > 500)  ?  9 :  8 ;


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text("WOP3 - Desenvolvimento Humano", style: TextStyle(
                  fontSize: font_adj1, fontWeight: FontWeight.bold),),
                  flexibleSpace: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          child: Icon(Icons.arrow_back,size: 40,color: Colors.white),
                          onPressed: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(
                                  builder: (context) =>
                                  HomeAdm()));
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
                        child: (ListPage(widget._codAluno)),
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
                    ]),
            )
        )
    );
  }
}
//
class ListPage extends StatefulWidget {
  String _codAluno;
  ListPage(this._codAluno);
  @override
  _ListPageState createState() => _ListPageState();
}
//
class _ListPageState extends State<ListPage> {
  Color _cv1 = Colors.orange;
  Color _cv2 = Colors.orange;
  Color _cv3 = Colors.orange;
  Color _cv4 = Colors.orange;
  Color _cv5 = Colors.orange;
  Color _cv6 = Colors.orange;
  Color _cv7 = Colors.orange;
  Color _cv8 = Colors.orange;
  Color _cv9 = Colors.orange;
  Color _cv10 = Colors.orange;
  Color _cv11 = Colors.orange;
  Color _cv12 = Colors.orange;

  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;

  ResultaP01(String CodigoAluno, int AutoEstima) {
    setState(() {
      if (AutoEstima > 259) {
        _cv1 = _green;
      }
      else if ((AutoEstima > 244) && (AutoEstima < 260)) {
        _cv1 = _lime;
      }
      else if ((AutoEstima > 227) && (AutoEstima < 245)) {
        _cv1 = _yellow;
      }
      else if ((AutoEstima > 194) && (AutoEstima < 228)) {
        _cv1 = _orange;
      }
      else if ((AutoEstima < 194)) {
        _cv1 = _red;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP01(CodigoAluno, AutoEstima, _cv1)));
  }

  ResultaP02(String CodigoAluno, double cognitiva, double comportamental,
      double sentimento, double somatica) {
    setState(() {
      if (cognitiva > 41) {
        _cv1 = _green;
      }
      else if ((cognitiva > 24) && (cognitiva < 32)) {
        _cv1 = _lime;
      }
      else if ((cognitiva > 15) && (cognitiva < 23)) {
        _cv1 = _yellow;
      }
      else if ((cognitiva > 6) && (cognitiva < 14)) {
        _cv1 = _orange;
      }
      else if ((cognitiva < 7)) {
        _cv1 = _red;
      };

      if (comportamental > 32) {
        _cv2 = _green;
      }
      else if ((comportamental > 24) && (comportamental < 33)) {
        _cv2 = _lime;
      }
      else if ((comportamental > 18) && (comportamental < 25)) {
        _cv2 = _yellow;
      }
      else if ((comportamental > 12) && (comportamental < 19)) {
        _cv2 = _orange;
      }
      else if ((comportamental < 8)) {
        _cv2 = _red;
      };

      if (sentimento > 30) {
        _cv3 = _green;
      }
      else if ((sentimento > 23) && (sentimento < 31)) {
        _cv3 = _lime;
      }
      else if ((sentimento > 16) && (sentimento < 24)) {
        _cv3 = _yellow;
      }
      else if ((sentimento > 3) && (sentimento < 18)) {
        _cv3 = _orange;
      }
      else if ((sentimento < 4)) {
        _cv3 = _red;
      };

      if (somatica > 30) {
        _cv4 = _green;
      }
      else if ((somatica > 24) && (somatica < 31)) {
        _cv4 = _lime;
      }
      else if ((somatica > 18) && (somatica < 25)) {
        _cv4 = _yellow;
      }
      else if ((somatica > 7) && (somatica < 19)) {
        _cv4 = _orange;
      }
      else if ((somatica < 8)) {
        _cv4 = _red;
      };

      double ansiedadetotal = (cognitiva + comportamental + sentimento +
          somatica);
      if (ansiedadetotal > 127) {
        _cv5 = _green;
      }
      else if ((ansiedadetotal > 80) && (ansiedadetotal < 128)) {
        _cv5 = _lime;
      }
      else if ((ansiedadetotal > 56) && (ansiedadetotal < 81)) {
        _cv5 = _yellow;
      }
      else if ((ansiedadetotal > 34) && (ansiedadetotal < 57)) {
        _cv5 = _orange;
      }
      else if ((ansiedadetotal < 35)) {
        _cv5 = _red;
      };
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP02(
                      CodigoAluno,
                      cognitiva,
                      _cv1,
                      comportamental,
                      _cv2,
                      sentimento,
                      _cv3,
                      somatica,
                      _cv4,
                      ansiedadetotal,
                      _cv5)));
    });
  }

  ResultaP03(String CodigoAluno, int Depressao) {
    setState(() {
      if (Depressao > 59) {
        _cv1 = _red;
      }
      else if ((Depressao > 54) && (Depressao < 61)) {
        _cv1 = _orange;
      }
      else if ((Depressao > 42) && (Depressao < 56)) {
        _cv1 = _yellow;
      }
      else if ((Depressao > 38) && (Depressao < 44)) {
        _cv1 = _lime;
      }
      else if ((Depressao < 39)) {
        _cv1 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP03(CodigoAluno, Depressao, _cv1)));
  }

  ResultaP04(String CodigoAluno, int ID, int LC, int OD, int PR) {
    setState(() {
      if (ID > 23) {
        _cv1 = _green;
      }
      else if ((ID > 21) && (ID < 25)) {
        _cv1 = _lime;
      }
      else if ((ID > 19) && (ID < 23)) {
        _cv1 = _yellow;
      }
      else if ((ID > 17) && (ID < 21)) {
        _cv1 = _orange;
      }
      else if ((ID < 17)) {
        _cv1 = _red;
      };

      if (LC > 32) {
        _cv2 = _green;
      }
      else if ((LC > 24) && (LC < 33)) {
        _cv2 = _lime;
      }
      else if ((LC > 18) && (LC < 25)) {
        _cv2 = _yellow;
      }
      else if ((LC > 12) && (LC < 19)) {
        _cv2 = _orange;
      }
      else if ((LC < 8)) {
        _cv2 = _red;
      };

      if (OD > 27) {
        _cv3 = _green;
      }
      else if ((OD > 24) && (OD < 28)) {
        _cv3 = _lime;
      }
      else if ((OD > 21) && (OD < 26)) {
        _cv3 = _yellow;
      }
      else if ((OD > 18) && (OD < 23)) {
        _cv3 = _orange;
      }
      else if ((OD < 17)) {
        _cv3 = _red;
      };

      if (PR > 25) {
        _cv4 = _green;
      }
      else if ((PR > 23) && (PR < 27)) {
        _cv4 = _lime;
      }
      else if ((PR > 20) && (PR < 25)) {
        _cv4 = _yellow;
      }
      else if ((PR > 17) && (PR < 22)) {
        _cv4 = _orange;
      }
      else if ((PR < 17)) {
        _cv4 = _red;
      };


      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP04(
                      CodigoAluno,
                      ID,
                      _cv1,
                      LC,
                      _cv2,
                      OD,
                      _cv3,
                      PR,
                      _cv4)));
    });
  }

  ResultaP05(String CodigoAluno, int aw, int lft, int ods, int sds, int sw) {
    setState(() {
      if (aw > 30) {
        _cv1 = _green;
      }
      else if ((aw > 27) && (aw < 31)) {
        _cv1 = _lime;
      }
      else if ((aw > 24) && (aw < 29)) {
        _cv1 = _yellow;
      }
      else if ((aw > 21) && (aw < 26)) {
        _cv1 = _orange;
      }
      else if ((aw < 21)) {
        _cv1 = _red;
      };

      if (sds > 30) {
        _cv2 = _green;
      }
      else if ((sds > 28) && (sds < 32)) {
        _cv2 = _lime;
      }
      else if ((sds > 25) && (sds < 30)) {
        _cv2 = _yellow;
      }
      else if ((sds > 22) && (sds < 27)) {
        _cv2 = _orange;
      }
      else if ((sds < 20)) {
        _cv2 = _red;
      };

      if (ods > 33) {
        _cv3 = _green;
      }
      else if ((ods > 31) && (ods < 32)) {
        _cv3 = _lime;
      }
      else if ((ods > 28) && (ods < 32)) {
        _cv3 = _yellow;
      }
      else if ((ods > 25) && (ods < 29)) {
        _cv3 = _orange;
      }
      else if ((ods < 25)) {
        _cv3 = _red;
      };

      if (lft > 34) {
        _cv4 = _green;
      }
      else if ((lft > 32) && (lft < 33)) {
        _cv4 = _lime;
      }
      else if ((lft > 29) && (lft < 33)) {
        _cv4 = _yellow;
      }
      else if ((lft > 26) && (lft < 30)) {
        _cv4 = _orange;
      }
      else if ((lft < 26)) {
        _cv4 = _red;
      };

      if (sw > 34) {
        _cv5 = _green;
      }
      else if ((sw > 32) && (sw < 33)) {
        _cv5 = _lime;
      }
      else if ((sw > 29) && (sw < 31)) {
        _cv5 = _yellow;
      }
      else if ((sw > 26) && (sw < 30)) {
        _cv5 = _orange;
      }
      else if ((sw < 26)) {
        _cv5 = _red;
      };


      int total = (aw + lft + ods + sds + sw);
      if (total > 164) {
        _cv6 = _green;
      }
      else if ((total > 153) && (total < 166)) {
        _cv6 = _lime;
      }
      else if ((total > 139) && (total < 154)) {
        _cv6 = _yellow;
      }
      else if ((total > 128) && (total < 141)) {
        _cv6 = _orange;
      }
      else if ((total < 126)) {
        _cv6 = _red;
      };


      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP05(
                      CodigoAluno,
                      aw,
                      _cv1,
                      sds,
                      _cv2,
                      ods,
                      _cv3,
                      lft,
                      _cv4,
                      sw,
                      _cv5,
                      total,
                      _cv6)));
    });
  }

  //
  ResultaP06(String CodigoAluno, int ci, int mi, int np) {
    setState(() {
      if (np > 32) {
        _cv1 = _green;
      }
      else if ((np > 29) && (np < 34)) {
        _cv1 = _lime;
      }
      else if ((np > 23) && (np < 28)) {
        _cv1 = _yellow;
      }
      else if ((np > 20) && (np < 25)) {
        _cv1 = _orange;
      }
      else if ((np < 22)) {
        _cv1 = _red;
      };

      if (mi > 24) {
        _cv2 = _green;
      }
      else if ((mi > 22) && (mi < 26)) {
        _cv2 = _lime;
      }
      else if ((mi > 20) && (mi < 22)) {
        _cv2 = _yellow;
      }
      else if ((mi > 17) && (mi < 20)) {
        _cv2 = _orange;
      }
      else if ((mi < 18)) {
        _cv2 = _red;
      };

      if (ci > 21) {
        _cv3 = _green;
      }
      else if ((ci > 19) && (ci < 21)) {
        _cv3 = _lime;
      }
      else if ((ci > 17) && (ci < 20)) {
        _cv3 = _yellow;
      }
      else if ((ci > 15) && (ci < 17)) {
        _cv3 = _orange;
      }
      else if ((ci < 15)) {
        _cv3 = _red;
      };


      int total = (np + ci + mi);
      if (total > 69) {
        _cv4 = _green;
      }
      else if ((total > 65) && (total < 70)) {
        _cv4 = _lime;
      }
      else if ((total > 60) && (total < 66)) {
        _cv4 = _yellow;
      }
      else if ((total > 55) && (total < 61)) {
        _cv4 = _orange;
      }
      else if ((total < 56)) {
        _cv4 = _red;
      };


      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP06(
                      CodigoAluno,
                      np,
                      _cv1,
                      mi,
                      _cv2,
                      ci,
                      _cv3,
                      total,
                      _cv4)));
    });
  }

  //
  ResultaP07(String CodigoAluno, int ae, int ao, int fe, int fo, int sw, int bas) {
    setState(() {
      //men
      if (ae > 29) {
        _cv1 = _green;
      }
      else if ((ae > 26) && (ae < 30)) {
        _cv1 = _lime;
      }
      else if ((ae > 24) && (ae < 28)) {
        _cv1 = _yellow;
      }
      else if ((ae > 20) && (ae < 25)) {
        _cv1 = _orange;
      }
      else if ((ae < 21)) {
        _cv1 = _red;
      };
      //womem
      if (ae > 29) {
        _cv2 = _green;
      }
      else if ((ae > 26) && (ae < 30)) {
        _cv2 = _lime;
      }
      else if ((ae > 24) && (ae < 28)) {
        _cv2 = _yellow;
      }
      else if ((ae > 20) && (ae < 25)) {
        _cv2 = _orange;
      }
      else if ((ae < 21)) {
        _cv2 = _red;
      };
//
      if (ao > 50) {
        _cv3 = _green;
      }
      else if ((ao > 46) && (ao < 51)) {
        _cv3 = _lime;
      }
      else if ((ao > 43) && (ao < 48)) {
        _cv3 = _yellow;
      }
      else if ((ao > 38) && (ao < 44)) {
        _cv3 = _orange;
      }
      else if ((ao < 39)) {
        _cv3 = _red;
      };
//
      //
      if (ao > 52) {
        _cv4 = _green;
      }
      else if ((ao > 50) && (ao < 53)) {
        _cv4 = _lime;
      }
      else if ((ao > 47) && (ao < 52)) {
        _cv4 = _yellow;
      }
      else if ((ao > 42) && (ao < 48)) {
        _cv4 = _orange;
      }
      else if ((ao < 43)) {
        _cv4 = _red;
      };
//
      if (fe > 13) {
        _cv5 = _green;
      }
      else if ((fe > 12) && (fe < 14)) {
        _cv5 = _lime;
      }
      else if ((fe > 11) && (fe < 14)) {
        _cv5 = _yellow;
      }
      else if ((fe >  8) && (fe < 12)) {
        _cv5 = _orange;
      }
      else if ((fe <  9)) {
        _cv5 = _red;
      };
//
      if (fe > 12) {
        _cv6 = _green;
      }
      else if ((fe > 11) && (fe < 13)) {
        _cv6 = _lime;
      }
      else if ((fe > 10) && (fe < 13)) {
        _cv6 = _yellow;
      }
      else if ((fe >  7) && (fe < 11)) {
        _cv6 = _orange;
      }
      else if ((fe <  8)) {
        _cv6 = _red;
      };
//
      if (fo > 54) {
        _cv7 = _green;
      }
      else if ((fo > 49) && (fo < 55)) {
        _cv7 = _lime;
      }
      else if ((fo > 44) && (fo < 51)) {
        _cv7 = _yellow;
      }
      else if ((fo > 37) && (fo < 45)) {
        _cv7 = _orange;
      }
      else if ((fo < 38)) {
        _cv7 = _red;
      };
//
      if (fo > 52) {
        _cv8 = _green;
      }
      else if ((fo > 47) && (fo < 53)) {
        _cv8 = _lime;
      }
      else if ((fo > 42) && (fo < 49)) {
        _cv8 = _yellow;
      }
      else if ((fo > 35) && (fo < 43)) {
        _cv8 = _orange;
      }
      else if ((fo < 36)) {
        _cv8 = _red;
      };
//
      if (sw >  7) {
        _cv9 = _green;
      }
      else if ((sw > 6 ) && (sw <  8)) {
        _cv9 = _lime;
      }
      else if ((sw > 5 ) && (sw <  7)) {
        _cv9 = _yellow;
      }
      else if ((sw > 4 ) && (sw < 6 )) {
        _cv9 = _orange;
      }
      else if ((sw <  5)) {
        _cv9 = _red;
      };
//
      if (sw >  8) {
        _cv10 = _green;
      }
      else if ((sw >  7) && (sw <  9)) {
        _cv10 = _lime;
      }
      else if ((sw >  6) && (sw <  8)) {
        _cv10 = _yellow;
      }
      else if ((sw >  5) && (sw <  7)) {
        _cv10 = _orange;
      }
      else if ((sw <  6)) {
        _cv10 = _red;
      };
//
      if (bas > 21) {
        _cv11 = _green;
      }
      else if ((bas > 19) && (bas < 21)) {
        _cv11 = _lime;
      }
      else if ((bas > 17) && (bas < 20)) {
        _cv11 = _yellow;
      }
      else if ((bas > 15) && (bas < 17)) {
        _cv11 = _orange;
      }
      else if ((bas < 15)) {
        _cv11 = _red;
      };
//
      if (bas > 44) {
        _cv12 = _green;
      }
      else if ((bas > 40) && (bas < 45)) {
        _cv12 = _lime;
      }
      else if ((bas > 37) && (bas < 42)) {
        _cv12 = _yellow;
      }
      else if ((bas > 32) && (bas < 38)) {
        _cv12 = _orange;
      }
      else if ((bas < 33)) {
        _cv12 = _red;
      };
//

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP07(
                      CodigoAluno,
                      ae,
                      _cv1,
                      _cv2,
                      ao,
                      _cv3,
                      _cv4,
                      fe,
                      _cv5,
                      _cv6,
                      fo,
                      _cv7,
                      _cv8,
                      sw,
                      _cv9,
                      _cv10,
                      bas,
                      _cv11,
                      _cv12,)));
    });
  }

  //
  ResultaP08(String CodigoAluno, int pi, int pr) {
    setState(() {
      if (pi > 54) {
        _cv1 = _red;
      }
      else if ((pi > 49) && (pi < 56)) {
        _cv1 = _orange;
      }
      else if ((pi > 44) && (pi < 51)) {
        _cv1 = _yellow;
      }
      else if ((pi > 37) && (pi < 45)) {
        _cv1 = _lime;
      }
      else if ((pi < 39)) {
        _cv1 = _green;
      };

      if (pr > 36) {
        _cv2 = _red;
      }
      else if ((pr > 33) && (pr < 38)) {
        _cv2 = _orange;
      }
      else if ((pr > 30) && (pr < 35)) {
        _cv2 = _yellow;
      }
      else if ((pr > 25) && (pr < 31)) {
        _cv2 = _lime;
      }
      else if ((pr < 27)) {
        _cv2 = _green;
      };


      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP08(CodigoAluno, pi, _cv1, pr, _cv2)));
    });
  }

  //
  ResultaP09(String CodigoAluno, int s, int ac, int r, int al) {
    setState(() {
      if (s > 33) {
        _cv1 = _green;
      }
      else if ((s > 31) && (s < 35)) {
        _cv1 = _lime;
      }
      else if ((s > 30) && (s < 33)) {
        _cv1 = _yellow;
      }
      else if ((s > 27) && (s < 31)) {
        _cv1 = _orange;
      }
      else if ((s < 29)) {
        _cv1 = _red;
      };

      if (ac > 32) {
        _cv2 = _green;
      }
      else if ((ac > 30) && (ac < 34)) {
        _cv2 = _lime;
      }
      else if ((ac > 29) && (ac < 32)) {
        _cv2 = _yellow;
      }
      else if ((ac > 26) && (ac < 30)) {
        _cv2 = _orange;
      }
      else if ((ac < 28)) {
        _cv2 = _red;
      };

      if (r > 32) {
        _cv3 = _green;
      }
      else if ((r > 30) && (r < 34)) {
        _cv3 = _lime;
      }
      else if ((r > 29) && (r < 32)) {
        _cv3 = _yellow;
      }
      else if ((r > 26) && (r < 30)) {
        _cv3 = _orange;
      }
      else if ((r < 28)) {
        _cv3 = _red;
      };

      if (al > 31) {
        _cv4 = _green;
      }
      else if ((al > 29) && (al < 33)) {
        _cv4 = _lime;
      }
      else if ((al > 28) && (al < 31)) {
        _cv4 = _yellow;
      }
      else if ((al > 25) && (al < 29)) {
        _cv4 = _orange;
      }
      else if ((al < 27)) {
        _cv4 = _red;
      };

      int total = (s + ac + r + al);
      if (total > 130) {
        _cv5 = _green;
      }
      else if ((total > 123) && (total < 132)) {
        _cv5 = _lime;
      }
      else if ((total > 116) && (total < 125)) {
        _cv5 = _yellow;
      }
      else if ((total > 107) && (total < 117)) {
        _cv5 = _orange;
      }
      else if ((total < 109)) {
        _cv5 = _red;
      };

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP09(
                      CodigoAluno,
                      s,
                      _cv1,
                      ac,
                      _cv2,
                      r,
                      _cv3,
                      al,
                      _cv4,
                      total,
                      _cv5)));
    });
  }

  //
  ResultaP10(String CodigoAluno, int sm, int sw) {
    setState(() {
      if (sm > 137) {
        _cv1 = _green;
      }
      else if ((sm > 128) && (sm < 139)) { _cv1 = _lime;}
      else if ((sm > 119) && (sm < 130)) { _cv1 = _yellow;}
      else if ((sm > 108) && (sm < 120)) { _cv1 = _orange;}
      else if ((sm < 110)) { _cv1 = _red;};

      if (sw > 136) { _cv2 = _green;}
      else if ((sw > 125) && (sw < 138)) {_cv2 = _lime;}
      else if ((sw > 115) && (sw < 127)) {_cv2 = _yellow;}
      else if ((sw > 103) && (sw < 116)) {_cv2 = _orange;}
      else if ((sw < 105)) {_cv2 = _red;};



      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP10(CodigoAluno, sm, _cv1, sw, _cv2)));
    });
  }

  //
  ResultaP11(String CodigoAluno, int sm, int sw) {
    setState(() {
      if (sm > 102) {
        _cv1 = _green;
      }
      else if ((sm >  92) && (sm < 103)) { _cv1 = _lime;}
      else if ((sm >  82) && (sm <  94)) { _cv1 = _yellow;}
      else if ((sm >  70) && (sm <  83)) { _cv1 = _orange;}
      else if ((sm <  71)) { _cv1 = _red;};

      if (sw > 98) { _cv2 = _green;}
      else if ((sw > 87) && (sw <  99)) {_cv2 = _lime;}
      else if ((sw > 76) && (sw < 89)) {_cv2 = _yellow;}
      else if ((sw > 63) && (sw < 77)) {_cv2 = _orange;}
      else if ((sw < 64)) {_cv2 = _red;};



      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP11(CodigoAluno, sm, _cv1, sw, _cv2)));
    });
  }

  //
  ResultaP12(String CodigoAluno, int sv) {
    setState(() {
      if (sv > 14) { _cv1 = _green;}
      else if ((sv > 12) && (sv < 16)) { _cv1 = _lime;}
      else if ((sv > 11) && (sv < 14)) { _cv1 = _yellow;}
      else if ((sv > 8) && (sv < 12)) { _cv1 = _orange;}
      else if ((sv < 10)) { _cv1 = _red;};

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP12(CodigoAluno, sv, _cv1)));
    });
  }

  //
  ResultaP13(String CodigoAluno, int aa, int ras, int ho, int ao, int ai) {
    setState(() {
      if (aa > 46) {
        _cv1 = _green;
      }
      else if ((aa > 42) && (aa < 47)) {
        _cv1 = _lime;
      }
      else if ((aa >36) && (aa < 43)) {
        _cv1 = _yellow;
      }
      else if ((aa > 29) && (aa < 37)) {
        _cv1 = _orange;
      }
      else if ((aa < 30)) {
        _cv1 = _red;
      };

      if (ras > 32) {
        _cv2 = _green;
      }
      else if ((ras > 28) && (ras < 33)) {
        _cv2 = _lime;
      }
      else if ((ras > 25) && (ras < 30)) {
        _cv2 = _yellow;
      }
      else if ((ras > 20) && (ras < 26)) {
        _cv2 = _orange;
      }
      else if ((ras < 21)) {
        _cv2 = _red;
      };

      if (ho > 43) {
        _cv3 = _green;
      }
      else if ((ho > 38) && (ho < 44)) {
        _cv3 = _lime;
      }
      else if ((ho > 34) && (ho < 40)) {
        _cv3 = _yellow;
      }
      else if ((ho > 28) && (ho < 35)) {
        _cv3 = _orange;
      }
      else if ((ho < 29)) {
        _cv3 = _red;
      };

      if (ao > 13) {
        _cv4 = _green;
      }
      else if ((ao > 12) && (ao < 14)) {
        _cv4 = _lime;
      }
      else if ((ao > 11) && (ao < 14)) {
        _cv4 = _yellow;
      }
      else if ((ao > 8) && (ao < 12)) {
        _cv4 = _orange;
      }
      else if ((ao < 9)) {
        _cv4 = _red;
      };

      if (ai > 21) {
        _cv5 = _green;
      }
      else if ((ai > 19) && (ai < 22)) {
        _cv5 = _lime;
      }
      else if ((ai > 17) && (ai < 21)) {
        _cv5 = _yellow;
      }
      else if ((ai > 13) && (ai < 18)) {
        _cv5 = _orange;
      }
      else if ((ai < 14)) {
        _cv5 = _red;
      };
int total =  (aa + ras + ho + ao + ai);
      if (total > 159) {
        _cv6 = _green;
      }
      else if ((total > 141) && (total < 160)) {
        _cv6 = _lime;
      }
      else if ((total > 123) && (total < 143)) {
        _cv6 = _yellow;
      }
      else if ((total > 103) && (total < 124)) {
        _cv6 = _orange;
      }
      else if ((total < 104)) {
        _cv6 = _red;
      };


      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP13(
                      CodigoAluno,
                      aa,
                      _cv1,
                      ras,
                      _cv2,
                      ho,
                      _cv3,
                      ao,
                      _cv4,
                      ai,
                      _cv5,
                      total,
                      _cv6)));
    });
  }

  ResultaP14(String CodigoAluno, int ot, int et, int re) {
    setState(() {
      if (ot > 80) {
        _cv1 = _green;
      }
      else if ((ot > 76) && (ot < 81)) {
        _cv1 = _lime;
      }
      else if ((ot >69) && (ot < 78)) {
        _cv1 = _yellow;
      }
      else if ((ot > 60) && (ot < 70)) {
        _cv1 = _orange;
      }
      else if ((ot < 61)) {
        _cv1 = _red;
      };

      if (et > 62) {
        _cv2 = _green;
      }
      else if ((et > 56) && (et < 63)) {
        _cv2 = _lime;
      }
      else if ((et > 50) && (et < 58)) {
        _cv2 = _yellow;
      }
      else if ((et > 42) && (et < 51)) {
        _cv2 = _orange;
      }
      else if ((et < 43)) {
        _cv2 = _red;
      };

      if (re > 44) {
        _cv3 = _green;
      }
      else if ((re > 40) && (re < 45)) {
        _cv3 = _lime;
      }
      else if ((re > 36) && (re < 42)) {
        _cv3 = _yellow;
      }
      else if ((re > 30) && (re < 37)) {
        _cv3 = _orange;
      }
      else if ((re < 31)) {
        _cv3 = _red;
      };

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP14(
                      CodigoAluno,
                      ot,
                      _cv1,
                      et,
                      _cv2,
                      re,
                      _cv3)));
    });
  }

  //
  ResultaP14F(String CodigoAluno, int ot, int et, int re) {
    setState(() {
      if (ot > 80) {
        _cv1 = _green;
      }
      else if ((ot > 76) && (ot < 81)) {
        _cv1 = _lime;
      }
      else if ((ot >69) && (ot < 78)) {
        _cv1 = _yellow;
      }
      else if ((ot > 60) && (ot < 70)) {
        _cv1 = _orange;
      }
      else if ((ot < 61)) {
        _cv1 = _red;
      };

      if (et > 53) {
        _cv2 = _green;
      }
      else if ((et > 52) && (et < 54)) {
        _cv2 = _lime;
      }
      else if ((et > 49) && (et < 54)) {
        _cv2 = _yellow;
      }
      else if ((et > 44) && (et < 50)) {
        _cv2 = _orange;
      }
      else if ((et < 45)) {
        _cv2 = _red;
      };

      if (re > 62) {
        _cv3 = _green;
      }
      else if ((re > 60) && (re < 62)) {
        _cv3 = _lime;
      }
      else if ((re > 56) && (re < 62)) {
        _cv3 = _yellow;
      }
      else if ((re > 50) && (re < 57)) {
        _cv3 = _orange;
      }
      else if ((re < 51)) {
        _cv3 = _red;
      };

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP14F(
                      CodigoAluno,
                      ot,
                      _cv1,
                      et,
                      _cv2,
                      re,
                      _cv3)));
    });
  }
//
  ResultaP15(String CodigoAluno, int sm, int sw) {
    setState(() {
      if (sm > 90) {
        _cv1 = _green;
      }
      else if ((sm > 80 ) && (sm <  91)) { _cv1 = _lime;}
      else if ((sm > 71) && (sm <  82)) { _cv1 = _yellow;}
      else if ((sm > 60) && (sm < 72)) { _cv1 = _orange;}
      else if ((sm <  61)) { _cv1 = _red;};

      if (sw >  56) { _cv2 = _green;}
      else if ((sw >  47) && (sw <  57)) {_cv2 = _lime;}
      else if ((sw > 38) && (sw <  49)) {_cv2 = _yellow;}
      else if ((sw >  27) && (sw <  39)) {_cv2 = _orange;}
      else if ((sw <  28)) {_cv2 = _red;};



      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP15(CodigoAluno, sm, _cv1, sw, _cv2)));
    });
  }

  //
  ResultaP16(String CodigoAluno, int Culpa) {
    setState(() {
      if (Culpa > 200) {
        _cv1 = _red;
      }
      else if ((Culpa > 177) && (Culpa < 201)) {
        _cv1 = _orange;
      }
      else if ((Culpa > 154) && (Culpa < 179)) {
        _cv1 = _yellow;
      }
      else if ((Culpa > 129) && (Culpa < 155)) {
        _cv1 = _lime;
      }
      else if ((Culpa < 130)) {
        _cv1 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP16(CodigoAluno, Culpa, _cv1)));
  }
  //
  ResultaP17(String CodigoAluno, int negativo) {
    setState(() {
      if (negativo > 115) {
        _cv1 = _red;
      }
      else if ((negativo > 107) && (negativo < 116)) {
        _cv1 = _orange;
      }
      else if ((negativo > 100) && (negativo < 109)) {
        _cv1 = _yellow;
      }
      else if ((negativo > 91) && (negativo < 101)) {
        _cv1 = _lime;
      }
      else if ((negativo < 92)) {
        _cv1 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP17(CodigoAluno, negativo, _cv1)));
  }
  //
  ResultaP18(String CodigoAluno, int aeg, int aee) {
    setState(() {
      if (aeg > 198) {
        _cv1 = _green;
      }
      else if ((aeg > 185) && (aeg < 199)) { _cv1 = _lime;}
      else if ((aeg > 172) && (aeg <  187)) { _cv1 = _yellow;}
      else if ((aeg > 157) && (aeg < 173)) { _cv1 = _orange;}
      else if ((aeg <  158)) { _cv1 = _red;};

      if (aee >  69) { _cv2 = _green;}
      else if ((aee >  63) && (aee <  70)) {_cv2 = _lime;}
      else if ((aee > 58) && (aee <  65)) {_cv2 = _yellow;}
      else if ((aee >  51) && (aee <  59)) {_cv2 = _orange;}
      else if ((aee <  52)) {_cv2 = _red;};



      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP18(CodigoAluno, aeg, _cv1, aee, _cv2)));
    });
  }
  //
  ResultaP19(String CodigoAluno, int com, int con, int cha, int total) {
    setState(() {
      if (com > 55) {
        _cv1 = _green;
      }
      else if ((com > 52) && (com < 56)) {
        _cv1 = _lime;
      }
      else if ((com > 50) && (com < 54)) {
        _cv1 = _yellow;
      }
      else if ((com > 46) && (com < 51)) {
        _cv1 = _orange;
      }
      else if ((com < 47)) {
        _cv1 = _red;
      };

      if (con > 48) {
        _cv2 = _green;
      }
      else if ((con > 46) && (con < 49)) {
        _cv2 = _lime;
      }
      else if ((con > 45) && (con < 48)) {
        _cv2 = _yellow;
      }
      else if ((con > 42) && (con < 46)) {
        _cv2 = _orange;
      }
      else if ((con < 43)) {
        _cv2 = _red;
      };

      if (cha > 42) {
        _cv3 = _green;
      }
      else if ((cha > 40) && (cha < 43)) {
        _cv3 = _lime;
      }
      else if ((cha > 39) && (cha < 42)) {
        _cv3 = _yellow;
      }
      else if ((cha > 36) && (cha < 40)) {
        _cv3 = _orange;
      }
      else if ((cha < 37)) {
        _cv3 = _red;
      };

      int total = (com + con + cha);
      if (total > 147) {
        _cv5 = _green;
      }
      else if ((total > 140) && (total < 148)) {
        _cv5 = _lime;
      }
      else if ((total > 134) && (total < 142)) {
        _cv5 = _yellow;
      }
      else if ((total > 126) && (total < 135)) {
        _cv5 = _orange;
      }
      else if ((total < 127)) {
        _cv5 = _red;
      };

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) =>
                  GraficosP19(
                      CodigoAluno,
                      com,
                      _cv1,
                      con,
                      _cv2,
                      cha,
                      _cv3,
                      total,
                      _cv4,
                      )));
    });
  }
  //
  ResultaP20(String CodigoAluno, int traumas) {
    setState(() {
      if (traumas> 73) {
        _cv1 = _red;
      }
      else if ((traumas> 66) && (traumas< 74)) {
        _cv1 = _orange;
      }
      else if ((traumas> 60) && (traumas< 68)) {
        _cv1 = _yellow;
      }
      else if ((traumas> 52) && (traumas< 61)) {
        _cv1 = _lime;
      }
      else if ((traumas< 53)) {
        _cv1 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP20(CodigoAluno, traumas, _cv1)));
  }
  //
  ResultaP21(String CodigoAluno, int empatia) {
    setState(() {
      if (empatia> 209) {
        _cv1 = _red;
      }
      else if ((empatia> 198) && (empatia< 210)) {
        _cv1 = _orange;
      }
      else if ((empatia> 188) && (empatia< 200)) {
        _cv1 = _yellow;
      }
      else if ((empatia> 176) && (empatia< 189)) {
        _cv1 = _lime;
      }
      else if ((empatia< 177)) {
        _cv1 = _green;
      };
    });
    setState(() {
      if (empatia> 229) {
        _cv2 = _red;
      }
      else if ((empatia> 219) && (empatia< 230)) {
        _cv2 = _orange;
      }
      else if ((empatia> 209) && (empatia< 221)) {
        _cv2 = _yellow;
      }
      else if ((empatia> 197) && (empatia< 210)) {
        _cv2 = _lime;
      }
      else if ((empatia< 198)) {
        _cv2 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP21(CodigoAluno, empatia, _cv1, _cv2)));
  }
//
  ResultaP22(String CodigoAluno, int mortal) {
    setState(() {
      if (mortal> 165) {
        _cv1 = _red;
      }
      else if ((mortal> 148) && (mortal< 166)) {
        _cv1 = _orange;
      }
      else if ((mortal> 132) && (mortal< 150)) {
        _cv1 = _yellow;
      }
      else if ((mortal> 114) && (mortal< 133)) {
        _cv1 = _lime;
      }
      else if ((mortal< 115)) {
        _cv1 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP22(CodigoAluno, mortal, _cv1)));
  }
  //
  ResultaP23(String CodigoAluno, int novo) {
    setState(() {
      if (novo> 139) {
        _cv1 = _red;
      }
      else if ((novo> 132) && (novo< 140)) {
        _cv1 = _orange;
      }
      else if ((novo> 125) && (novo< 134)) {
        _cv1 = _yellow;
      }
      else if ((novo> 116) && (novo< 126)) {
        _cv1 = _lime;
      }
      else if ((novo< 117)) {
        _cv1 = _green;
      };
    });
    setState(() {
      if (novo> 133) {
        _cv2 = _red;
      }
      else if ((novo> 126) && (novo< 134)) {
        _cv2 = _orange;
      }
      else if ((novo> 119) && (novo< 128)) {
        _cv2 = _yellow;
      }
      else if ((novo> 110) && (novo< 120)) {
        _cv2 = _lime;
      }
      else if ((novo< 111)) {
        _cv2 = _green;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP23(CodigoAluno, novo, _cv1, _cv2)));
  }
//
  ResultaP24(String CodigoAluno, int alegria) {
    setState(() {
      if (alegria> 60) {
        _cv1 = _green;
      }
      else if ((alegria> 55) && (alegria< 61)) {
        _cv1 = _lime;
      }
      else if ((alegria> 50) && (alegria< 57)) {
        _cv1 = _yellow;
      }
      else if ((alegria> 43) && (alegria< 51)) {
        _cv1 = _orange;
      }
      else if ((alegria< 44)) {
        _cv1 = _red;
      };
    });
    setState(() {
      if (alegria> 62) {
        _cv2 = _green;
      }
      else if ((alegria> 57) && (alegria< 63)) {
        _cv2 = _lime;
      }
      else if ((alegria> 52) && (alegria< 59)) {
        _cv2 = _yellow;
      }
      else if ((alegria> 45) && (alegria< 53)) {
        _cv2 = _orange;
      }
      else if ((alegria< 46)) {
        _cv2 = _red;
      };
    });
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                GraficosP24(CodigoAluno, alegria, _cv1, _cv2)));
  }
  Future getPosts() async {
    int currentTime;
    var db = Firestore.instance;
    QuerySnapshot qn = await
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .getDocuments();

    var dados = qn;
    return qn.documents;
  }

  bool corDisc = false;
  bool corDE = false;

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery
        .of(context)
        .size
        .width;
    final heightlua = MediaQuery
        .of(context)
        .size
        .height;
    double font_adj1 = (widthlua > 1600) ? 20 :
    (widthlua > 1500) ? 20 :
    (widthlua > 1400) ? 17 :
    (widthlua > 1300) ? 18 :
    (widthlua > 1200) ? 18 :
    (widthlua > 1100) ? 19 :
    (widthlua > 1000) ? 19 :
    (widthlua > 900) ? 16 :
    (widthlua > 800) ? 15 :
    (widthlua > 700) ? 14 :
    (widthlua > 600) ? 13 :
    (widthlua > 500) ? 12 : 12;
    return
      Container(
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
                            color:
                            (snapshot.data[index].data["Code"] == "D01")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D02")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D03")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D04")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D05")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D06")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D07")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D08")
                                ? Colors.deepPurple
                                :
                            (snapshot.data[index].data["Code"] == "D09")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D10")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D11")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D12")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D13")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D14")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D14F")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D15")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D16")
                                ? Colors.deepOrange
                                :
                            (snapshot.data[index].data["Code"] == "D17")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D18")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D19")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D20")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D21")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D22")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D23")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D24")
                                ? Colors.indigoAccent
                                :
                            (snapshot.data[index].data["Code"] == "D25")
                                ? Colors.teal
                                :
                            (snapshot.data[index].data["Code"] == "D26")
                                ? Colors.teal
                                :
                            (snapshot.data[index].data["Code"] == "D27")
                                ? Colors.teal
                                :
                            (snapshot.data[index].data["Code"] == "D28")
                                ? Colors.teal
                                :
                            (snapshot.data[index].data["Code"] == "D29")
                                ? Colors.teal
                                :
                            (snapshot.data[index].data["Code"] == "D30")
                                ? Colors.teal
                                : Colors.white,

                            child: ListTile(
                                leading: Icon(Icons.show_chart, size: 40.0),
                                trailing: Icon(Icons.keyboard_arrow_right),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                title: Text(
                                  snapshot.data[index].data["Code"] + " - " +
                                      snapshot.data[index].data["Test_name"],
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                subtitle: Text(
                                    snapshot.data[index].data["Data-teste"]),
                                onTap: () {
                                  (snapshot.data[index].data["Code"] == "D01") ?
                                  ResultaP01(widget._codAluno, snapshot
                                      .data[index].data["Auto_Estima"]) :
                                  (snapshot.data[index].data["Code"] == "D02") ?
                                  ResultaP02(widget._codAluno,
                                      snapshot.data[index]
                                          .data["Ansiedade_Cognitiva"],
                                      snapshot.data[index]
                                          .data["Ansiedade_Comportamental"],
                                      snapshot.data[index]
                                          .data["Ansiedade_Sentimento"],
                                      snapshot.data[index]
                                          .data["Ansiedade_Somatica"]) :
                                  (snapshot.data[index].data["Code"] == "D03") ?
                                  ResultaP03(widget._codAluno,
                                      snapshot.data[index].data["Depressao"]) :
                                  (snapshot.data[index].data["Code"] == "D04")
                                      ?
                                  ResultaP04(widget._codAluno,
                                      snapshot.data[index].data["Resultado_id"],
                                      snapshot.data[index].data["Resultado_lc"],
                                      snapshot.data[index].data["Resultado_od"],
                                      snapshot.data[index].data["Resultado_pr"])
                                      :
                                  (snapshot.data[index].data["Code"] == "D05")
                                      ?
                                  ResultaP05(widget._codAluno,
                                      snapshot.data[index].data["Racional_aw"],
                                      snapshot.data[index].data["Racional_lft"],
                                      snapshot.data[index].data["Racional_ods"],
                                      snapshot.data[index].data["Racional_sds"],
                                      snapshot.data[index].data["Racional_sw"])
                                      :
                                  (snapshot.data[index].data["Code"] == "D06") ?
                                  ResultaP06(widget._codAluno,
                                      snapshot.data[index]
                                          .data["Impulsividade_Cognitiva"],
                                      snapshot.data[index]
                                          .data["Impuslividade_Motora"],
                                      snapshot.data[index]
                                          .data["Nao_Planejada"]) :
                                  (snapshot.data[index].data["Code"] == "D07") ?
                                  ResultaP07(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Avaliação de Aparência "],
                                      snapshot.data[index]
                                          .data["Avaliação de Aptidão " ],
                                      snapshot.data[index]
                                          .data["Orientação de Aparência "],
                                      snapshot.data[index]
                                          .data["Orientação de Fitness "],
                                      snapshot.data[index]
                                          .data["Peso Subjetivo"],
                                      snapshot.data[index]
                                          .data["Áreas do Corpo Satisfação"]) :
                                      //
                                  (snapshot.data[index].data["Code"] == "D08") ?
                                  ResultaP08(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Preocupacao_incerteza"],
                                      snapshot.data[index]
                                          .data["Preocupacao_razoes"]) :
                                      //
                                  (snapshot.data[index].data["Code"] == "D09") ?
                                  ResultaP09(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Simpatia_s"],
                                      snapshot.data[index]
                                          .data["Simpatia_ac" ],
                                      snapshot.data[index]
                                          .data["Simpatia_r"],
                                      snapshot.data[index]
                                          .data["Simpatia_al"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D10") ?
                                  ResultaP10(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Acertivo"],
                                      snapshot.data[index]
                                          .data["Acertivo"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D11") ?
                                  ResultaP11(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Intimidade"],
                                      snapshot.data[index]
                                          .data["Intimidade"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D12") ?
                                  ResultaP12(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Controla"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D13") ?
                                  ResultaP13(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Raiva_aa" ],
                                      snapshot.data[index]
                                          .data["Raiva_ras"],
                                      snapshot.data[index]
                                          .data["Raiva_ho"],
                                      snapshot.data[index]
                                          .data["Raiva_ao"],
                                      snapshot.data[index]
                                          .data["Raiva_ai"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D14") ?
                                  ResultaP14(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Confianca_ot"],
                                      snapshot.data[index]
                                          .data["Confianca_et"],
                                      snapshot.data[index]
                                          .data["Confianca_re"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D14F") ?
                                  ResultaP14(
                                  widget._codAluno,
                                  snapshot.data[index]
                                      .data["Confianca_ot"],
                                  snapshot.data[index]
                                      .data["Confianca_et"],
                                  snapshot.data[index]
                                      .data["Confianca_re"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D15") ?
                                  ResultaP15(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Relacionamento_dr"],
                                      snapshot.data[index]
                                          .data["Relacionamento_ri"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D16") ?
                                  ResultaP16(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Culpa"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D17") ?
                                  ResultaP17(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Humor"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D18") ?
                                  ResultaP18(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Auto_eficiencia Geral"],
                                      snapshot.data[index]
                                          .data["Auto_eficiencia especifica"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D19") ?
                                  ResultaP19(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Flexibilidade_compromisso"],
                                      snapshot.data[index]
                                          .data["Flexibilidade_controle"],
                                      snapshot.data[index]
                                          .data["Flexibilidade_desafio"],
                                  0) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D20") ?
                                  ResultaP20(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["traumas"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D21") ?
                                  ResultaP21(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Empatia"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D22") ?
                                  ResultaP22(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Mortabilidade"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D23") ?
                                  ResultaP23(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Lidar_com_Novo"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D24") ?
                                  ResultaP24(
                                      widget._codAluno,
                                      snapshot.data[index]
                                          .data["Alegria"]) :
                                  //
                                  (snapshot.data[index].data["Code"] == "D29") ?
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              GraficosTM(
                                                  widget._codAluno,
                                                  snapshot.data[index]
                                                      .data["cat_a"],
                                                  snapshot.data[index]
                                                      .data["cat_b"],
                                                  snapshot.data[index]
                                                      .data["cat_c"],
                                                  snapshot.data[index]
                                                      .data["cat_d"],
                                                  snapshot.data[index]
                                                      .data["cat_e"],
                                                  snapshot.data[index]
                                                      .data["cat_f"],
                                                  snapshot.data[index]
                                                      .data["cat_g"],
                                                  snapshot.data[index]
                                                      .data["cat_h"],
                                                  snapshot.data[index]
                                                      .data["cat_i"],
                                                  snapshot.data[index]
                                                      .data["cat_j"],
                                                  snapshot.data[index]
                                                      .data["cat_k"],
                                                  snapshot.data[index]
                                                      .data["cat_l"]
                                              ))) :
                                  (snapshot.data[index].data["Code"] == "D28") ?
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              GraficosDisc(
                                                  widget._codAluno,
                                                  snapshot.data[index]
                                                      .data["valD"],
                                                  snapshot.data[index]
                                                      .data["valI"],
                                                  snapshot.data[index]
                                                      .data["valS"],
                                                  snapshot.data[index]
                                                      .data["valC"],
                                                  snapshot.data[index]
                                                      .data["valantesD"],
                                                  snapshot.data[index]
                                                      .data["valantesI"],
                                                  snapshot.data[index]
                                                      .data["valantesS"],
                                                  snapshot.data[index]
                                                      .data["valantesC"]
                                              ))) :
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              GraficosDisc(
                                                  widget._codAluno,
                                                  snapshot.data[index]
                                                      .data["valD"],
                                                  snapshot.data[index]
                                                      .data["valI"],
                                                  snapshot.data[index]
                                                      .data["valS"],
                                                  snapshot.data[index]
                                                      .data["valC"],
                                                  snapshot.data[index]
                                                      .data["valantesD"],
                                                  snapshot.data[index]
                                                      .data["valantesI"],
                                                  snapshot.data[index]
                                                      .data["valantesS"],
                                                  snapshot.data[index]
                                                      .data["valantesC"]
                                              )));
                                  Center();
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
          title: Text(widget.post.data["nome"]),
          subtitle: Text(widget.post.data["Teste"]),

        ),
      ),
    );
  }
}



