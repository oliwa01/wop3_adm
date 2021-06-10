import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:starbewebapp/HomeAdm.dart';
import 'package:starbewebapp/resultados/ResultadosAdm.dart';



class GraficosPxx extends StatefulWidget {
  String _codAluno;
  int v1;
  Color cv1;

  GraficosPxx(this._codAluno,
      this.v1,
      this.cv1,
      );

  _GraficosPxxState createState() => _GraficosPxxState();

}

class _GraficosPxxState extends State<GraficosPxx> {
  List<charts.Series<Resultados, String>> _seriesData;

  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);

  _generateData() async {
    var data1 = [
      new Resultados(1, 'AUTO ESTIMA', widget.v1, widget.cv1),
      new Resultados(3, '', 300, Color(0xFFffffff).withOpacity(0.0)),
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


  // Ansiedade
  String _textoAnsiedade = "Sobre a Escala de Classificação de Autoestima"+
      "\nNa última década, houve uma reviravolta interessante sobre como as pessoas veem a autoestima. Vinte anos atrás, a evidência parecia claro que a alta autoestima era crucial se as pessoas deveriam ter vidas felizes e produtivas."+
      " Em nenhum lugar foi isso crença mais influente do que no sistema escolar. Pesquisa realizada na década de 1960 parecia provar que a realização escolar foi influenciado mais pela autoestima das crianças do que por seu intelectual Capacidade. Esses estudos inspiraram educadores a fazer tudo eles poderiam ajudar as crianças a se sentirem melhor sobre si mesmas em a crença de que isso iria ajudá-los a se tornarem melhores alunos. Como todo mundo sabe, esses programas se tornaram alvo de numerosos críticos." +
      "\nPesquisa em psicologia é sempre difícil. Um estudo típico pode focar em um punhado de variáveis enquanto, por causa de limitações práticas, ignora inúmeras outras variáveis que são potencialmente importantes. Isso significa que praticamente qualquer estudo de pesquisa está aberto a interpretações alternativas, e cabe aos pesquisadores subsequentes para desembaraçar as possibilidades miríades que explicam os resultados de qualquer estudo."
          " Eu acredito que isso é o que aconteceu com a pesquisa sobre a relação entre autoestima e escola conquista na década de 1960. As pessoas foram muito rápido para aceitar o resultados pelo valor facial. Antes de projetar programas escolares que focavam sobre o aumento da autoestima das crianças, eles teriam sido bem aconselhado a esperar por mais pesquisas para fornecer uma imagem mais clara sobre como as coisas realmente funcionavam. Se tivessem esperado alguns anos, os gurus educacionais que queria 'Eu sou uma pessoa maravilhosa' para ser o mantra de cada criança teria percebido que a alta autoestima em um vácuo não é necessariamente uma coisa boa. Crianças que são elogiadas por sua habilidade independentemente de seu trabalho são propensos a aprender que não é esperado muito deles; eles teriam todas as razões para se sentir bem sobre se, mesmo que eles produzem resultados medíocres. Nós sabemos que crianças são mais propensos a dominar material difícil se comentarmos em seus esforços, em vez de em sua habilidade. De fato, psicólogo Carol Dweck descobriu que o desempenho dos alunos que foram dadas tarefas que eram muito difíceis de completar e foram disse que eles falharam porque eles não se esforçam o suficiente melhorou mais do que os alunos que receberam tarefas fáceis, a fim de incentivá-los a se sentirem bem com sua habilidade. A moral de a história é clara - autoestima deve ser conquistada, não fornecida Incondicionalmente." +
      "\nDe fato, a autoestima extremamente alta pode ser um sinal de desajuste. Todos nós conhecemos pessoas que pensam que são mais seres humanos maravilhosos vivos, mesmo que suas falhas e limitações são óbvios para todos que se preocupam em dar um olhar superficial."+
      "\nÀs vezes chamado de alta autoestima defensiva, as pessoas com esta qualidade parecem ser capazes de colocar um giro positivo em mesmo os piores fracassos. Parece ser o caso de que as pessoas com moderadamente alta autoestima são os mais bem ajustados. Eles geralmente sentem bom sobre si mesmos, mas eles são capazes de reconhecer suas falhas e fazer algo sobre eles."+
      "\nAgora que eu desabafei minhas frustrações sobre a visão de que todos crianças devem ser elogiados incondicionalmente, deixe-me dizer que eu viram um número de clientes que sofreram terrivelmente de pobres autoestima. Talvez um dos exemplos mais pungentes foi um Estudante de pós-graduação eu vou chamar Doug. Ele sofria de ansiedade intensa e depressão, mesmo que sua vida estivesse indo muito bem. Doug tinha tido uma carreira acadêmica bem sucedida, foi casado com uma mulher que o amava, e era um pai, doting. No entanto, ele era incapaz de articular qualquer coisa boa sobre si mesmo. Durante um sessão de terapia, eu disse a ele que eu não estava indo mais longe até que ele pudesse dizer uma coisa positiva sobre si mesmo. Ele passou cinco minutos agitados mulling sobre possibilidades antes que ele disse: Eu costumava tocar o piano bem. Quando eu disse a ele que ele tinha que me dizer algo bom sobre si mesmo no presente, ele estava completamente perplexo. Eu finalmente cedeu e pediu-lhe para me dizer o que sua esposa diria sobre suas boas qualidades. Ele foi capaz de listar várias qualidades que ela apontaria para, mas depois imediatamente descartou-os como não confiáveis."+
      "\nAfinal, a esposa de Doug amava-o e, consequentemente, ela poderia não ser objetivo. Assim como pessoas com alta autoestima defensiva não pode reconhecer qualquer informação negativa sobre si mesmos, pessoas como Doug não pode reconhecer nada positivo sobre Se."+
      "\nSe você marcou abaixo do percentil 30 na Autoestima Escala de classificação, você, sem dúvida, merece se sentir melhor consigo mesmo. Eu não acredito que as pessoas devem ter inequivocamente positivo sentimentos sobre si mesmos, mas eu acredito que quase todo mundo merece se sentir geralmente bem sobre o tipo de pessoa eles são. A primeira evidência que você merece sentir melhor sobre si mesmo é que você está lendo essas palavras. Isso significa que você se importa em se tornar uma pessoa melhor, e você se preocupam com a forma como os outros reagem a você. E pessoas com autoesteem modesto muitas vezes fazem amigos carinhosos e leais. Porque eles estão convencidos de suas próprias inadequações, eles estão mais do que felizes em mudar o foco da atenção longe de si mesmos para aqueles em torno deles. A menos que sua pobre autoestima tenha feito você cortar se fora dos outros completamente, você provavelmente tem vários pessoas em sua vida que se preocupam com você e valorizar o tempo que eles gastar com você. Isso só mostra que você tem razão para se sentir bem sobre você mesmo."+
      "\nUma segunda chave para se sentir melhor sobre si mesmo é aceitar que você não precisa ser perfeito para se sentir bem consigo mesmo. Pobre autoestima foi uma das minhas lutas quando eu estava mais jovem, e esta foi uma lição que eu aprendi apenas com o tempo. Não, eu tinha. para admitir, eu não era brilhante, mas eu vim a aceitar que eu era inteligente o suficiente para obter um Ph.D. e para fazer o meu trabalho razoavelmente bem. Não, eu estava. não um clone robert Redford, mas eu estava apresentável o suficiente para seduzir uma mulher atraente e vivaz para se casar comigo. E não, eu estava. não o cara mais extrovertido e divertido ao redor, mas eu era interessante o suficiente para desenvolver um círculo valorizado de amigos."+
      "\nLevei muitos anos até me sentir geralmente confortável com mim mesmo, mas você pode acelerar o processo fazendo um concertado Esforço. Faça uma lista de seus pontos fortes. Pergunte a sua família e amigos por suas sugestões. Quando você se vê obcecado por suas limitações, saia da sua lista e leia em voz alta. É possível também use suas dúvidas a seu favor. Se você está convencido sua autoavaliação negativa é justificada, faça algo a respeito. Eu têm alunos conhecidos que têm uma baixa opinião de seu acadêmico habilidades que usam seus sentimentos como desculpa para desistir. Eles pular a aula, não se preparar para os testes, e depois reclamar:"+
      "Veja, eu só não pode cortá-lo. Suas dúvidas devem motivá-lo a fazer o seu Melhor. E se o seu melhor ainda não é bom o suficiente, você pode ter certeza que há algo mais que você pode fazer onde o seu melhor será mais do que bom o suficiente. Contanto que você não desista, você pode sinta-se bem consigo mesmo. Você é quem sabe.";
//
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
    double  w30p = widthlua * 0.30;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;
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
            bottom: TabBar(indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
                Tab(icon: Icon(FontAwesomeIcons.textHeight),),
              ],
            ),
          ),
          body: TabBarView(
            children: [

        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: ListView(
              children: <Widget>[
             SizedBox(
              width: 200,
              child:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[

                        SizedBox(
                          height: 10,
                        ),
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
                              "MUITO BAIXO\n000-194"
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
                              "BAIXO\n195-210"
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
                              "MÉDIO\n211-227"
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
                              "BOM\n228-244"
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
                              "ALTO\n245-300"
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
                        Container(
                          width: w100p,
                      height: 300,

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
                        Text(_textoAnsiedade,
                      style: TextStyle(fontSize: 12.0,
                          fontWeight: FontWeight.bold),),
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
                        SizedBox(height: 10)
                       ],
          ),
        ),
      ),
    ])))]))));
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