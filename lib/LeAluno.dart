import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase/firestore.dart' as fs;
import 'package:firebase/firebase.dart' as fb;
import 'HomeAdm.dart';
import 'resultados/ResultadosAdm.dart';

//
class LeAluno extends StatefulWidget {
String _codAluno;
  String _email;
  String _nome;
bool _t1;
bool _t2;
bool _t3;
bool _t4;
bool _t5;
bool _t6;
bool _t7;
bool _t8;
bool _t9;
bool _t10;
bool _t11;
bool _t12;
bool _t13;
bool _t14;
bool _t15;
bool _t16;
bool _t17;
bool _t18;
bool _t19;
bool _t20;
bool _t21;
bool _t22;
bool _t23;
bool _t24;
bool _t25;
bool _t26;
bool _t27;
bool _t28;
bool _t29;
bool _t30;
bool _e1;
bool _e2;
bool _e3;
bool _e4;
bool _e5;
bool _e6;
bool _e7;
bool _e8;
bool _e9;
bool _e10;
bool _e11;
bool _e12;
bool _e13;
bool _e14;
bool _e15;
bool _e16;
bool _e17;
bool _e18;
bool _e19;
bool _e20;
bool _e21;
bool _e22;
bool _e23;
bool _e24;
bool _e25;
bool _e26;
bool _e27;
bool _e28;
bool _e29;
bool _e30;


LeAluno(this._codAluno,this._email,this._nome,
this._t1,this._t2,this._t3,this._t4,this._t5,this._t6,this._t7,this._t8,this._t9,this._t10,
this._t11,this._t12,this._t13,this._t14,this._t15,this._t16,this._t17,this._t18,this._t19,this._t20,
this._t21,this._t22,this._t23,this._t24,this._t25,this._t26,this._t27,this._t28,this._t29,this._t30,
this._e1,this._e2,this._e3,this._e4,this._e5,this._e6,this._e7,this._e8,this._e9,this._e10,
this._e11,this._e12,this._e13,this._e14,this._e15,this._e16,this._e17,this._e18,this._e19,this._e20,
this._e21,this._e22,this._e23,this._e24,this._e25,this._e26,this._e27,this._e28,this._e29,this._e30,
    );
  @override
  _LeAlunoState createState() => _LeAlunoState();
}

class _LeAlunoState extends State<LeAluno> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  Firestore db = Firestore.instance;
  //
  bool _t1_value = true;
  bool _t2_value = true;
  bool _t3_value = true;
  bool _t4_value = true;
  bool _t5_value = true;
  bool _t6_value = true;
  bool _t7_value = true;
  bool _t8_value = true;
  bool _t9_value = true;
  bool _t10_value = true;
  bool _t11_value = true;
  bool _t12_value = true;
  bool _t13_value = true;
  bool _t14_value = true;
  bool _t15_value = true;
  bool _t16_value = true;
  bool _t17_value = true;
  bool _t18_value = true;
  bool _t19_value = true;
  bool _t20_value = true;
  bool _t21_value = true;
  bool _t22_value = true;
  bool _t23_value = true;
  bool _t24_value = true;
  bool _t25_value = true;
  bool _t26_value = true;
  bool _t27_value = true;
  bool _t28_value = true;
  bool _t29_value = true;
  bool _t30_value = true;
  //
  //
  bool _e1_value = true;
  bool _e2_value = true;
  bool _e3_value = true;
  bool _e4_value = true;
  bool _e5_value = true;
  bool _e6_value = true;
  bool _e7_value = true;
  bool _e8_value = true;
  bool _e9_value = true;
  bool _e10_value = true;
  bool _e11_value = true;
  bool _e12_value = true;
  bool _e13_value = true;
  bool _e14_value = true;
  bool _e15_value = true;
  bool _e16_value = true;
  bool _e17_value = true;
  bool _e18_value = true;
  bool _e19_value = true;
  bool _e20_value = true;
  bool _e21_value = true;
  bool _e22_value = true;
  bool _e23_value = true;
  bool _e24_value = true;
  bool _e25_value = true;
  bool _e26_value = true;
  bool _e27_value = true;
  bool _e28_value = true;
  bool _e29_value = true;
  bool _e30_value = true;

  _altera_t1() {
  db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t01" : _t1_value
        }
    );

  }
  //
  _altera_t2() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t02" : _t2_value
        }
    );

  }
  //
  _altera_t3() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t03" : _t3_value
        }
    );

  }
  //
  _altera_t4() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t04" : _t4_value
        }
    );

  }
  //
  _altera_t5() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t05" : _t5_value
        }
    );

  }
  //
  _altera_t6() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t06" : _t6_value
        }
    );

  }
  //
  _altera_t7() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t07" : _t7_value
        }
    );

  }
  //
  _altera_t8() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t08" : _t8_value
        }
    );

  }
  //
  _altera_t9() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t09" : _t9_value
        }
    );

  }
  //
  _altera_t10() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t10" : _t10_value
        }
    );

  }
  //
  _altera_t11() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t11" : _t11_value
        }
    );

  }
  //
  _altera_t12() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t12" : _t12_value
        }
    );

  }
  //
  _altera_t13() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t13" : _t13_value
        }
    );

  }
  //
  _altera_t14() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t14" : _t14_value
        }
    );

  }
  //
  _altera_t15() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t15" : _t15_value
        }
    );

  }
  //
  _altera_t16() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t16" : _t16_value
        }
    );

  }
  //
  _altera_t17() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t17" : _t17_value
        }
    );

  }
  //
  _altera_t18() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t18" : _t18_value
        }
    );

  }
  //
  _altera_t19() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t19" : _t19_value
        }
    );

  }
  //
  _altera_t20() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t20" : _t20_value
        }
    );

  }
  //
  _altera_t21() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t21" : _t21_value
        }
    );

  }
  //
  _altera_t22() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t22" : _t22_value
        }
    );

  }
  //
  _altera_t23() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t23" : _t23_value
        }
    );

  }
  //
  _altera_t24() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t24" : _t24_value
        }
    );

  }
  //
  _altera_t25() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t25" : _t25_value
        }
    );

  }
  //
  _altera_t26() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t26" : _t26_value
        }
    );

  }
  //
  _altera_t27() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t27" : _t27_value
        }
    );

  }
  //
  _altera_t28() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t28" : _t28_value
        }
    );

  }
  //
  _altera_t29() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t29" : _t29_value
        }
    );

  }
  //
  _altera_t30() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "t30" : _t30_value
        }
    );

  }
  //
  _altera_e1() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e01" : _e1_value
        }
    );

  }
  //
  _altera_e2() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e02" : _e2_value
        }
    );

  }
  //
  _altera_e3() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e03" : _e3_value
        }
    );

  }
  //
  _altera_e4() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e04" : _e4_value
        }
    );

  }
  //
  _altera_e5() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e05" : _e5_value
        }
    );

  }
  //
  _altera_e6() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e06" : _e6_value
        }
    );

  }
  //
  _altera_e7() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e07" : _e7_value
        }
    );

  }
  //
  _altera_e8() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e08" : _e8_value
        }
    );

  }
  //
  _altera_e9() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e09" : _e9_value
        }
    );

  }
  //
  _altera_e10() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e10" : _e10_value
        }
    );

  }
  //
  _altera_e11() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e11" : _e11_value
        }
    );

  }
  //
  _altera_e12() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e12" : _e12_value
        }
    );

  }
  //
  _altera_e13() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e13" : _e13_value
        }
    );

  }
  //
  _altera_e14() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e14" : _e14_value
        }
    );

  }
  //
  _altera_e15() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e15" : _e15_value
        }
    );

  }
  //
  _altera_e16() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e16" : _e16_value
        }
    );

  }
  //
  _altera_e17() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e17" : _e17_value
        }
    );

  }
  //
  _altera_e18() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e18" : _e18_value
        }
    );

  }
  //
  _altera_e19() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e19" : _e19_value
        }
    );

  }
  //
  _altera_e20() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e20" : _e20_value
        }
    );

  }
  //
  _altera_e21() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e21" : _e21_value
        }
    );

  }
  //
  _altera_e22() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e22" : _e22_value
        }
    );

  }
  //
  _altera_e23() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e23" : _e23_value
        }
    );

  }
  //
  _altera_e24() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e24" : _e24_value
        }
    );

  }
  //
  _altera_e25() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e25" : _e25_value
        }
    );

  }
  //
  _altera_e26() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e26" : _e26_value
        }
    );

  }
  //
  _altera_e27() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e27" : _e27_value
        }
    );

  }
  //
  _altera_e28() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e28" : _e28_value
        }
    );

  }
  //
  _altera_e29() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e29" : _e29_value
        }
    );

  }
  //
  _altera_e30() {
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "e30" : _e30_value
        }
    );

  }
  //
  @override
  void initState()  {
    super.initState();

    _t1_value = widget._t1;
    _t2_value = widget._t2;
    _t3_value = widget._t3;
    _t4_value = widget._t4;
    _t5_value = widget._t5;
    _t6_value = widget._t6;
    _t7_value = widget._t7;
    _t8_value = widget._t8;
    _t9_value = widget._t9;
    _t10_value = widget._t10;
    _t11_value = widget._t11;
    _t12_value = widget._t12;
    _t13_value = widget._t13;
    _t14_value = widget._t14;
    _t15_value = widget._t15;
    _t16_value = widget._t16;
    _t17_value = widget._t17;
    _t18_value = widget._t18;
    _t19_value = widget._t19;
    _t20_value = widget._t20;
    _t21_value = widget._t21;
    _t22_value = widget._t22;
    _t23_value = widget._t23;
    _t24_value = widget._t24;
    _t25_value = widget._t25;
    _t26_value = widget._t26;
    _t27_value = widget._t27;
    _t28_value = widget._t28;
    _t29_value = widget._t29;
    _t30_value = widget._t30;
    _e1_value = widget._e1;
    _e2_value = widget._e2;
    _e3_value = widget._e3;
    _e4_value = widget._e4;
    _e5_value = widget._e5;
    _e6_value = widget._e6;
    _e7_value = widget._e7;
    _e8_value = widget._e8;
    _e9_value = widget._e9;
    _e10_value = widget._e10;
    _e11_value = widget._e11;
    _e12_value = widget._e12;
    _e13_value = widget._e13;
    _e14_value = widget._e14;
    _e15_value = widget._e15;
    _e16_value = widget._e16;
    _e17_value = widget._e17;
    _e18_value = widget._e18;
    _e19_value = widget._e19;
    _e20_value = widget._e20;
    _e21_value = widget._e21;
    _e22_value = widget._e22;
    _e23_value = widget._e23;
    _e24_value = widget._e24;
    _e25_value = widget._e25;
    _e26_value = widget._e26;
    _e27_value = widget._e27;
    _e28_value = widget._e28;
    _e29_value = widget._e29;
    _e30_value = widget._e30;
  }

  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
//
    double  w10p = widthlua *  0.10;
    double  w20p = widthlua *  0.20;
    double  w30p = widthlua *  0.30;
    double  w40p = widthlua *  0.40;
    double  w50p = widthlua *  0.50;
    double  w60p = widthlua *  0.60;
    double  w70p = widthlua *  0.70;
    double  w80p = widthlua *  0.80;
    double  w90p = widthlua *  0.90;
    double  w100p = widthlua * 1.00;
    //
    double  h10p = heightlua * 0.05;
    double  hespace = heightlua * 0.02;
//
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
    //
    double  fbotao =  (widthlua > 1600) ? 22 :
    (widthlua > 1500)  ?  22 :
    (widthlua > 1000)  ?  17 :
    (widthlua > 900)  ?  16 :
    (widthlua > 800)  ?  14 :
    (widthlua > 600)  ?  13 :
    (widthlua > 500)  ?  10 :
    (widthlua > 400)  ?  9 :
    (widthlua > 400)  ?  8 :
    (widthlua > 300)  ?  6 :
    (widthlua > 200)  ?  3 :
    (widthlua > 100)  ?  2 :  1 ;


    String _tit1 = "01- Classificação de Autoestima";
    String _tit2 = "02- O Questionário de Ansiedade";
    String _tit3 = "03- Pensamentos Automáticos";
    String _tit4 = "04- Comportamento Pessoal";
    String _tit5 = "05- Crenças Pessoais";
    String _tit6 = "06- Impulsividade Barratt";
    String _tit7 = "07- As Relações Corpo-Auto Multidimensional";
    String _tit8 = "08- A escala de Medo";
    String _tit9 = "09- A Escala de Simpatia";
    String _tit10 = "10- A Escala de Auto-Expressão Adulta";
    String _tit11 = "11- A Escala do Medo da Intimidade";
    String _tit12 = "12- A Escala do Modo de Viver";
    String _tit13 = "13- Raiva Multidimensional";
    String _tit14 = "14M- Confiança Interpessoal(Masculino)";
    String _tit14f = "14F- Confiança Interpessoal(Feminino)";
    String _tit15 = "15- Relacionamentos";
    String _tit16 = "16- Culpa";
    String _tit17 = "17- Mau humor";
    String _tit18 = "18- Auto-Eficácia";
    String _tit19 = "19- Flexibilidade";
    String _tit20 = "20 -Traumas?";
    String _tit21 = "21- Empatia";
    String _tit22 = "22- Imortalidade Simbólica";
    String _tit23 = "23- Lidar com o novo";
    String _tit24 = "24- Alegria";
    String _tit25 = "25- PERCEPÇÃO DE DEDUÇÃO ";
    String _tit26 = "26- PERCEPÇÃO LÓGICA ";
    String _tit27 = "27- MULTIPLAS INTELIGÊNCIAS ";
    String _tit28 = "28- DOMINÂNCIA CEREBRAL ";
    String _tit29 = "29- PADRÃO PREDOMINANTE ";
    String _tit30 = "30- GERENCIAMENTO DO TEMPO ";



    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("WOP3 - ORIENTAÇÃO VOCACIONAL"),
    leading: GestureDetector(
    onTap: () {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>
                    HomeAdm()));
      },
        child: Icon(Icons.arrow_back, size: 30,  // add custom icons also
      )),
      ),
        body: Container(
        child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: hespace),
                AnimatedContainer(
                  //  padding: EdgeInsets.only(top : padbox),
                    width: w60p,
                    height: h10p * 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: _bR,
                    ),
                    alignment: Alignment.center,
                    duration: Duration(seconds: 3),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child:
                    Text(widget._nome,textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: font_adj1 * 2.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
                SizedBox(height: hespace),
                AnimatedContainer(
                  //  padding: EdgeInsets.only(top : padbox),
                    width: w60p,
                    height: h10p * 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: _bR,
                    ),
                    alignment: Alignment.center,
                    duration: Duration(seconds: 3),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child:
                    Text(widget._email,textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: font_adj1 * 2.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
//Botao resultados
                Container(
                  height: h10p * 2,
                  alignment: Alignment.bottomCenter,
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
                            "Resultados dos Testes",
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
                SizedBox(height: hespace),

                Container(
                  width: w100p,
                  color: Colors.deepPurple,
                  child: Column(
                children: [
                SizedBox(
                  height: h10p * 2,
                  child: Text("\nBarreiras Pessoais",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: font_adj1 * 2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),)
                ),
//p1
                Container(
                  width: w90p,
                  height: h10p,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                  children: [
                    SizedBox( width: w40p, height: (w10p), child: Text(_tit1,textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: font_adj1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)),
                    SizedBox(width: w20p,height: (w10p),
                      child: SizedBox.expand(
                      child: FlatButton(
                        color: _t1_value ? Colors.green: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              _t1_value ? "Liberado": "Bloqueado",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: fbotao,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          setState(() {
                            _t1_value = !_t1_value;
                            _altera_t1();
                          });

                        },
                      ),
                    ),
                  ),
                    SizedBox(width: 20),
                    SizedBox(width: w20p,height: (w10p),
                      child: SizedBox.expand(
                        child: FlatButton(
                          color: _e1_value ? Colors.green: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                _e1_value ? "Selecionada": "Não Selecionada",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: fbotao,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _e1_value = !_e1_value;
                              _altera_e1();
                            });

                          },
                        ),
                      ),
                    )
                  ])),
                SizedBox(height: hespace),
//
//p2
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit2,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t2_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t2_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t2_value = !_t2_value;
                                    _altera_t2();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e2_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e2_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e2_value = !_e2_value;
                                    _altera_e2();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p3
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit3,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t3_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t3_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t3_value = !_t3_value;
                                    _altera_t3();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e3_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e3_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e3_value = !_e3_value;
                                    _altera_e3();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p4
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit4,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t4_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t4_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t4_value = !_t4_value;
                                    _altera_t4();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e4_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e4_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e4_value = !_e4_value;
                                    _altera_e4();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p5
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit5,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t5_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t5_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t5_value = !_t5_value;
                                    _altera_t5();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e5_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e5_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e5_value = !_e5_value;
                                    _altera_e5();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p6
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit6,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t6_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t6_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t6_value = !_t6_value;
                                    _altera_t6();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e6_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e6_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e6_value = !_e6_value;
                                    _altera_e6();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p7
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit7,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t7_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t7_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t7_value = !_t7_value;
                                    _altera_t7();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e7_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e7_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e7_value = !_e7_value;
                                    _altera_e7();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p8
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit8,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t8_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t8_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t8_value = !_t8_value;
                                    _altera_t8();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e8_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e8_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e8_value = !_e8_value;
                                    _altera_e8();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace)
                ])),
                Container(
                  width: w100p,
                color: Colors.deepOrange,
                child: Column(
                children: [
                SizedBox(
                height: h10p * 2,
                child: Text("\nBarreiras Interpessoais",
                textAlign: TextAlign.left,
                style: TextStyle(
                fontSize: font_adj1 * 2,
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),)
                ),


    //p9
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit9,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t9_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t9_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t9_value = !_t9_value;
                                    _altera_t9();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e9_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e9_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e9_value = !_e9_value;
                                    _altera_e9();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p10
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit10,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t10_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t10_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t10_value = !_t10_value;
                                    _altera_t10();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e10_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e10_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e10_value = !_e10_value;
                                    _altera_e10();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p11
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit11,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t11_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t11_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t11_value = !_t11_value;
                                    _altera_t11();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e11_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e11_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e11_value = !_e11_value;
                                    _altera_e11();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p12
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit12,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t12_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t12_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t12_value = !_t12_value;
                                    _altera_t12();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e12_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e12_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e12_value = !_e12_value;
                                    _altera_e12();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p13
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit13,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t13_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t13_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t13_value = !_t13_value;
                                    _altera_t13();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e13_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e13_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e13_value = !_e13_value;
                                    _altera_e13();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p14
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit14,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t14_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t14_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t14_value = !_t14_value;
                                    _altera_t14();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e14_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e14_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e14_value = !_e14_value;
                                    _altera_e14();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit14f,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t30_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t30_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t30_value = !_t30_value;
                                    _altera_t30();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e30_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e30_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e30_value = !_e30_value;
                                    _altera_e30();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p15
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit15,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t15_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t15_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t15_value = !_t15_value;
                                    _altera_t15();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e15_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e15_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e15_value = !_e15_value;
                                    _altera_e15();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p16
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit16,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t16_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t16_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t16_value = !_t16_value;
                                    _altera_t16();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e16_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e16_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e16_value = !_e16_value;
                                    _altera_e16();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace)
                ])),

                Container(
                    width: w100p,
                color: Colors.indigoAccent,
                child: Column(
                children: [
                SizedBox(
                height: h10p * 2,
                child: Text("\nEm Busca do Auto-Crescimento",
                textAlign: TextAlign.left,
                style: TextStyle(
                fontSize: font_adj1 * 2,
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),)
                ),
//p17
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit17,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t17_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t17_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t17_value = !_t17_value;
                                    _altera_t17();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e17_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e17_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e17_value = !_e17_value;
                                    _altera_e17();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p18
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit18,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t18_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t18_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t18_value = !_t18_value;
                                    _altera_t18();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e18_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e18_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e18_value = !_e18_value;
                                    _altera_e18();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p19
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit19,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t19_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t19_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t19_value = !_t19_value;
                                    _altera_t19();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e19_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e19_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e19_value = !_e19_value;
                                    _altera_e19();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p20
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit20,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t20_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t20_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t20_value = !_t20_value;
                                    _altera_t20();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e20_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e20_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e20_value = !_e20_value;
                                    _altera_e20();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p21
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit21,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t21_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t21_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t21_value = !_t21_value;
                                    _altera_t21();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e21_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e21_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e21_value = !_e21_value;
                                    _altera_e21();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p22
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit22,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t22_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t22_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t22_value = !_t22_value;
                                    _altera_t22();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e22_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e22_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e22_value = !_e22_value;
                                    _altera_e22();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p23
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit23,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t23_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t23_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t23_value = !_t23_value;
                                    _altera_t23();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e23_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e23_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e23_value = !_e23_value;
                                    _altera_e23();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p24
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit24,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t24_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t24_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t24_value = !_t24_value;
                                    _altera_t24();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e24_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e24_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e24_value = !_e24_value;
                                    _altera_e24();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
                ])),

                Container(
                    width: w100p,
                    color: Colors.teal,
                    child: Column(
                        children: [
                          SizedBox(
                              height: h10p * 2,
                              child: Text("\nOrientação Vocacional",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: font_adj1 * 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),)
                          ),
//p25
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit25,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t25_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t25_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t25_value = !_t25_value;
                                    _altera_t25();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e25_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e25_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e25_value = !_e25_value;
                                    _altera_e25();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p26
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit26,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t26_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t26_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t26_value = !_t26_value;
                                    _altera_t26();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e26_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e26_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e26_value = !_e26_value;
                                    _altera_e26();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p27
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit27,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t27_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t27_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t27_value = !_t27_value;
                                    _altera_t27();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e27_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e27_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e27_value = !_e27_value;
                                    _altera_e27();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p28
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit28,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t28_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t28_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t28_value = !_t28_value;
                                    _altera_t28();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e28_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e28_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e28_value = !_e28_value;
                                    _altera_e28();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p29
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit29,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t29_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t29_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t29_value = !_t29_value;
                                    _altera_t29();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e29_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e29_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e29_value = !_e29_value;
                                    _altera_e29();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),
//p30
                Container(
                    width: w90p,
                    height: h10p,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                        children: [
                          SizedBox( width: w40p, height: (w10p), child: Text(_tit30,textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: font_adj1,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),)),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _t30_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _t30_value ? "Liberado": "Bloqueado",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _t30_value = !_t30_value;
                                    _altera_t30();
                                  });

                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(width: w20p,height: (w10p),
                            child: SizedBox.expand(
                              child: FlatButton(
                                color: _e30_value ? Colors.green: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Text(
                                      _e30_value ? "Selecionada": "Não Selecionada",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fbotao,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _e30_value = !_e30_value;
                                    _altera_e30();
                                  });

                                },
                              ),
                            ),
                          )
                        ])),
                SizedBox(height: hespace),

//

                SizedBox(height: hespace),

              ]))
              ]
    )
          )
    )
        )
        ));
  }
}
