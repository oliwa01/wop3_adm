import 'package:flutter/material.dart';
import 'package:starbewebapp/Login.dart';
import 'package:starbewebapp/graficos/GraficosP01.dart';
import 'package:starbewebapp/pdf/pdf_01.dart';
import 'package:starbewebapp/resultados/ResultadosAdm.dart';
import 'HomeAdm.dart';
import 'graficos/GraficosP02.dart';
import 'graficos/GraficosPxx.dart';
import 'resultados/ResultadosTM.dart';
import 'DISC/disc.dart';

import 'graficos/Graficos.dart';
import 'resultados/RESULTADOS.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/Disc" : (context) => Disc("001"),
        "/RESULTADOS" : (context) => RESULTADOS("001",1,2,3,4,5,6,7,8),
        "/ResultadosTM" : (context) => ResultadosTM("001",1,2,3,4,5,6,7,8,0,0,0,0),
        "/Graficos" : (context) => Graficos("001",0,Colors.red,1,Colors.red,2,Colors.red,3,Colors.red,4,Colors.red,5,Colors.red,6,Colors.red,7,Colors.red)
      },
      theme: ThemeData(
        primaryColor: Color(0xffff6101),
      ),
       //home: HomeDesktop()

      //home: Pdf01()
      home: GraficosPxx("001",190,Colors.red)
        /*
      home:  GraficosTM("001",
        10,Colors.red,
        12,Colors.orange,
        14,Colors.deepOrangeAccent,
        16,Colors.yellow,
        18,Colors.lime,
        20,Colors.green,
        18,Colors.lime,
        16,Colors.yellow,
        14,Colors.deepOrange,
        12,Colors.red,
        10,Colors.red,
        8,Colors.red)
        */
    ));


