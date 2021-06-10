import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:starbewebapp/resultados/ResultadosAdm.dart';



class GraficosP20 extends StatefulWidget {
  String _codAluno;
  int v1;
  Color cv1;


  GraficosP20(this._codAluno,
      this.v1,
      this.cv1,
      );

  _GraficosP20State createState() => _GraficosP20State();

}

class _GraficosP20State extends State<GraficosP20> {
  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);

  _generateData() async {
    var data1 = [
      new Resultados(1, 'Traumas', widget.v1, widget.cv1),
      new Resultados(3, ' ', 90, Color(0xFFffffff).withOpacity(0.0)),

    ];



    _seriesData.add(
      charts.Series(
        domainFn: (Resultados Resultados, _) => Resultados.place,
        measureFn: (Resultados Resultados, _) => Resultados.quantity,
        id: 'diag',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Resultados Resultados, _) =>
            charts.ColorUtil.fromDartColor(Resultados.cor),
      ),

    );


  }


  double _valorAnsiedade (double d) => d;
  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;
  //
  double fontnumber = 16.0;
  //
  @override
  void initState() {
    setState(() {
      _valorAnsiedade(widget.v1.toDouble());
    });
    super.initState();
    _seriesData = List<charts.Series<Resultados, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
    double  h05p = heightlua * 0.05;
    double  w05p = widthlua * 0.05;
    double  w20p = widthlua * 0.17;

    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Wop3 - Desenvolvimento Humano"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFF58524),
                        Color(0XFFF92B7F),
                      ])
              ),
            ),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Traumas',
                          style: TextStyle(fontSize: 20.0,
                              fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            AnimatedContainer(
                                padding: EdgeInsets.only (top: 2),
                                width:   w20p ,
                                height:  h05p,
                                decoration: BoxDecoration(
                                  color: _red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 1),
                                curve: Curves.elasticInOut,
                                child: Text(
                                  "ALTO"
                                  , textAlign: TextAlign.center,

                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                            AnimatedContainer(
                                padding: EdgeInsets.only (top: 2),
                                width:   w20p ,
                                height:  h05p,
                                decoration: BoxDecoration(
                                  color: _orange,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 1),
                                curve: Curves.elasticInOut,
                                child: Text(
                                  "BOM"
                                  , textAlign: TextAlign.center,

                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                            AnimatedContainer(
                                padding: EdgeInsets.only (top: 2),
                                width:   w20p ,
                                height:  h05p,
                                decoration: BoxDecoration(
                                  color: _yellow,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 1),
                                curve: Curves.elasticInOut,
                                child: Text(
                                  "MÉDIO"
                                  , textAlign: TextAlign.center,

                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                            AnimatedContainer(
                                padding: EdgeInsets.only (top: 2),
                                width:   w20p ,
                                height:  h05p,
                                decoration: BoxDecoration(
                                  color: _lime,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 1),
                                curve: Curves.elasticInOut,
                                child: Text(
                                  "BAIXO"
                                  , textAlign: TextAlign.center,

                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                            AnimatedContainer(
                                padding: EdgeInsets.only (top: 2),
                                width:   w20p ,
                                height:  h05p,
                                decoration: BoxDecoration(
                                  color: _green,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 1),
                                curve: Curves.elasticInOut,
                                child: Text(
                                  "MUITO BAIXO"
                                  , textAlign: TextAlign.center,

                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                          ],
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            vertical: false,
                            barGroupingType: charts.BarGroupingType.stacked,
                            behaviors: [new charts.SeriesLegend(
                                position: charts.BehaviorPosition.top,
                                outsideJustification: charts.OutsideJustification.endDrawArea,
                                horizontalFirst: false,
                                desiredMaxRows: 2,
                                cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                    color: charts.MaterialPalette.purple.shadeDefault,
                                    fontFamily: 'Georgia',
                                    fontSize: 8)
                            )],
                            animationDuration: Duration(seconds: 3),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          alignment: Alignment.centerLeft,
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
                                        builder: (context) => ResultadosAdm(widget._codAluno)
                                    ));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class Resultados {
  String place;
  int year;
  int quantity;
  Color cor;

  Resultados(this.year, this.place, this.quantity, this.cor);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}