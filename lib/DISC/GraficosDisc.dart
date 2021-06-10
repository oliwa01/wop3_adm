import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starbewebapp/resultados/ResultadosAdm.dart';
import 'package:pie_chart/pie_chart.dart';


class GraficosDisc extends StatefulWidget {
  String _codAluno;
  int _valD;
  int _valI;
  int _valS;
  int _valC;
  int _valDantes;
  int _valIantes;
  int _valSantes;
  int _valCantes;


  GraficosDisc(this._codAluno,this._valD,this._valI,this._valS,this._valC,this._valDantes,this._valIantes,this._valSantes,this._valCantes,);

  _GraficosDiscState createState() => _GraficosDiscState();

}

class _GraficosDiscState extends State<GraficosDisc> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  int _nroDISC;

  double _perD;
  double _perI;
  double _perS;
  double _perC;
  int _calcperD;
  int _calcperI;
  int _calcperS;
  int _calcperC;
  int _totDISC;
  // RECEBA DADOS DA BASE DE DADOS
  String _titulo = "   ";
  String _emocoes = "   ";
  String _excessos = "   ";
  String _julga = "   ";
  String _medos = "   ";
  String _objetivo = "   ";
  String _pressao = "   ";
  String _valor = "   ";
  String _influencia = "   ";
  String _aumentaria = "   ";
  //
  double reciprocal(double d) =>  d;

  Map<String, double> dataMap = Map();
  List<Color> colorList = [
        Color(0xff109618),
        Color(0xfffdbe19),
        Color(0xffff9900),
        Color(0xffdc3912),
  ];

  void _carregatab () async {
    print("DISC = " + _nroDISC.toString());
    Firestore db = Firestore.instance;
    QuerySnapshot querySnapshot =
    await db.collection("Disc")
        .document("tabelas")
        .collection("Codigos")
        .where("codigo", isEqualTo: _nroDISC)
        .getDocuments();
    for (DocumentSnapshot item in querySnapshot.documents) {
      var dados = item.data;
      setState(() {

        _titulo = dados["titulo"].toString();
        _emocoes = dados["emocoes"].toString();
        _excessos = dados["excessos"].toString();
        _julga = dados["julga"].toString();
        _medos = dados["medos"].toString();
        _objetivo = dados["objetivo"].toString();
        _pressao = dados["pressao"].toString();
        _valor = dados["valor"].toString();
        _influencia = dados["influencia"].toString();

      });
      QuerySnapshot querySnapshot =
      await db.collection("Disc")
          .document("tabelas")
          .collection("Aumentaria")
          .where("codigo", isEqualTo: _nroDISC)
          .getDocuments();
      for (DocumentSnapshot item in querySnapshot.documents) {
        var dados2 = item.data;
        setState(() {
          _aumentaria = dados2["aumentaria"].toString();
        });
      }
    }
  }
//
  Color _cv1 = Colors.yellow;
  Color _cv2 = Colors.deepOrangeAccent;
  Color _cv3 = Colors.deepOrange;
  Color _cv4 = Colors.redAccent;
  Color _cv5 = Colors.green;
  Color _cv6 = Colors.lightGreenAccent;
  Color _cv7 = Colors.lightBlue;
  Color _cv8 = Colors.blueGrey;
  Color _cv9 = Colors.pinkAccent;
  @override
  void initState() {
  setState(() {
  _nroDISC =
    ((widget._valD * 1000) + (widget._valI * 100) + (widget._valS * 10) +
        (widget._valC));
    _totDISC = (widget._valD + widget._valI + widget._valS + widget._valC);
    _calcperD = ((widget._valD / _totDISC) * 100).round();
    _calcperI = ((widget._valI / _totDISC) * 100).round();
    _calcperS = ((widget._valS / _totDISC) * 100).round();
    _calcperC = ((widget._valC / _totDISC) * 100).round();
  double _vd = _calcperD.toDouble();
  double _vi = _calcperI.toDouble();
  double _vs = _calcperS.toDouble();
  double _vc = _calcperC.toDouble();

  dataMap.putIfAbsent('Dominância', () =>   _vd);
  dataMap.putIfAbsent('Influência',() =>    _vi);
  dataMap.putIfAbsent('Estabilidade',() =>  _vs);
  dataMap.putIfAbsent('Conformidade',() =>  _vc);


  print("D ="+_calcperD.toString());
  print("I ="+_calcperI.toString());
  print("S ="+_calcperS.toString());
  print("C ="+_calcperC.toString());
  });

  _carregatab();


  }

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
//

    double  w20p = widthlua *  0.20;

    double  font_adj =  (widthlua > 1600) ? 20 :
    (widthlua > 1500)  ?  20 :
    (widthlua > 1400)  ?  17 :
    (widthlua > 1300)  ?  18 :
    (widthlua > 1200)  ?  18 :
    (widthlua > 1100)  ?  17 :
    (widthlua > 1000)  ?  17 :
    (widthlua > 900)  ?  14 :
    (widthlua > 800)  ?  13 :
    (widthlua > 700)  ?  12 :
    (widthlua > 600)  ?  11 :
    (widthlua > 500)  ?  10 :  10 ;
    //
    double  wc = widthlua * 1.0;
    double  hc = heightlua * 0.85;
    double  sb1 = widthlua * 0.28;
    double  hsb1 = heightlua * 0.04;
    double  sb2 = widthlua * 0.65;
    double  hsb2 = heightlua * 0.04;
    double  hsb3 = heightlua * 0.32;

    double  hespace = heightlua * 0.01;
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Wop3 - Desenvolvimento Humano"),
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
                                    ResultadosAdm(widget._codAluno)));
                      },
                    )
                  ],
                ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.lightBlue,
                tabs: [
                  Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
                  Tab(icon: Icon(FontAwesomeIcons.chartPie)),

                ],
              ),
            ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Container(
                    width: widthlua,
                    height: heightlua,
                  color: Colors.grey,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.pink,
                          width: wc,
                          height: hc,
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_nroDISC.toString(),
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(height: hespace),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_titulo,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(height: hespace),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv1,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("EMOÇÕES",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_emocoes,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv2,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("EXCESSOS",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text( _excessos,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv3,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("JULGAMENTO",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_emocoes,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv4,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("MEDOS",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_medos,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv5,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("OBJETIVOS",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_objetivo,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv6,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("PRESSÃO",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_pressao,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv7,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("VALORES",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_valor,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv8,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("INFLUÊNCIA",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb2,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_influencia,
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: sb1,
                                    height: hsb1,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: _cv9,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text("AÇÃO EFETIVA",
                                          style: TextStyle(
                                              fontSize: font_adj,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: sb2,
                                    height: hsb3,
                                    child:  AnimatedContainer(
                                        padding: EdgeInsets.only(top : 2),
                                        width: sb1,
                                        height: hsb1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center ,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child:
                                        Text(_aumentaria,textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: font_adj * 0.9,
                                              color: Colors.black ,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: hespace),

                            ],
                          ),
                        )
                       ]
                    )
                  )
                )
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(_titulo, style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(
                          child: Center(
                          child: PieChart(
                            dataMap: dataMap,
                            animationDuration: Duration(milliseconds: 800),
                            chartLegendSpacing: 32.0,
                            chartRadius: MediaQuery.of(context).size.width,
                            showChartValuesInPercentage: true,
                            showChartValues: true,
                            showChartValuesOutside: true,
                            chartValueBackgroundColor: Colors.grey[200],
                            colorList: colorList,
                            showLegends: true,
                            legendPosition: LegendPosition.bottom,
                            decimalPlaces: 1,
                            showChartValueLabel: true,
                            initialAngle: 30,
                            chartValueStyle: defaultChartValueStyle.copyWith(
                              color: Colors.blueGrey[900].withOpacity(0.9),
                            ),
                            chartType: ChartType.disc,
                          )
                        ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF3C5A99),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: SizedBox.expand(
                            child: FlatButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Voltar Menu ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResultadosAdm(widget._codAluno)));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ]
              )
              )
              )
    );

  }
}

class Task {
  String task;
  int taskvalue;
  Color colorval;
  Task(this.task, this.taskvalue, this.colorval);
}

