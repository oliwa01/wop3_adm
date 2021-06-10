
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase/firestore.dart' as fs;
import 'package:firebase/firebase.dart' as fb;
import 'package:starbewebapp/model/Usuario.dart';

import '../HomeAdm.dart';
import 'dart:io';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Pdf01 extends StatefulWidget {
  @override
  _Pdf01State createState() => _Pdf01State();
}

class _Pdf01State extends State<Pdf01> {
_gerapdf(){
  final doc = pw.Document();

  doc.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Text('Hello World!'),
      ),
    ),
  );

  final file = File('example.pdf');
  file.writeAsBytesSync(doc.save());

}


  @override
  void initState() {

    super.initState();
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            color: Colors.red,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                Column(
                    children: <Widget>[
                      SizedBox(
                        width: 160,
                        height: 40,
                        child: RaisedButton(
                          onPressed: _gerapdf()
                        )
                        ),
                        ]))

        ));
  }
}
