
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase/firestore.dart' as fs;
import 'package:firebase/firebase.dart' as fb;

import 'HomeAdm.dart';
import 'model/Usuario.dart';




class HomeDesktop extends StatefulWidget {
  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  bool _userLogado = false;
  String _dataTimeDb;
  String _codVenda;
  String _nomeUsuario;

  TextEditingController _controllerEmail = TextEditingController(text: "");
  TextEditingController _controllerSenha = TextEditingController(text: "");
  String _mensagemErro = "";

  Future _verificarUsuarioLogado() async {

    final FirebaseAuth auth = FirebaseAuth.instance;
    //auth.signOut();

    FirebaseUser usuarioLogado = await auth.currentUser();

    if( usuarioLogado != null ){
      _userLogado = true;
      String email = usuarioLogado.email;


    }

  }
  Future _logarUsuario( Usuario usuario ) async {
    String erro1 = "FirebaseError: There is no user record corresponding to this identifier. The user may have been deleted. (auth/user-not-found)";
    String erro2 = "FirebaseError: The password is invalid or the user does not have a password. (auth/wrong-password)";
    String erro3 = "FirebaseError: Too many unsuccessful login attempts. Please try again later. (auth/too-many-requests)";
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).catchError((error){
      setState(() {
        print("erro ="+error.toString()+"xxxx");

        if (error.toString() == erro1) {
          _mensagemErro = "**** Erro *****  Email não cadastrado ************";}
        else
        if (error.toString() == erro2)
        {_mensagemErro = "**** Erro *****  Senha Invalida ************";}
        else
        if (error.toString() == erro3)
        {_mensagemErro = "**** Erro *****  Excedeu o Numero de tentativar ***Tente mais tarde ************";
        _controllerEmail.text = "";
        _controllerSenha.text ="";}
        else
        {_mensagemErro = "Erro ao autenticar usuário, verifique e-mail e senha e tente novamente!";};

      });
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeAdm()));

  }

  _validarCampos(){

    //Recupera dados dos campos

    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;


    if( email.isNotEmpty && email.contains("@") ){

      if( senha.isNotEmpty && senha.length > 5 ){

        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.senha = senha;

        _logarUsuario( usuario );

      }else{
        setState(() {
          _mensagemErro = "Preencha a senha! digite mais de 6 caracteres";
        });
      }

    }else{
      setState(() {
        _mensagemErro = "Preencha o E-mail utilizando @";
      });
    }

  }

  @override
  void initState() {

    _verificarUsuarioLogado();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
    bool portrait = (widthlua > heightlua ? false: true);
    double  fatortitle    = portrait ? (heightlua  /100) : (heightlua  / 25);
    double  contasizeh    = portrait ? (heightlua  / 6) : (heightlua  / 5);
    double  contasizew    = portrait ? (heightlua  / 3) : (heightlua  / 2);
    double  contatexto    = portrait ? (widthlua   / 2) : (widthlua / 2);
    double  buttonsizew   = portrait ? (widthlua   / 10) : (widthlua / 10);
    double  buttonsizeh   = portrait ? (heightlua  / 20) : (heightlua  / 10);
    double  buttonsizews  = portrait ? (widthlua - 40) : (widthlua / 4);
    double  buttonsizehs  = portrait ? (heightlua  / 15) : (heightlua  / 15);
    double  fontbuttom    = portrait ? (heightlua  / 80) : (heightlua  / 60);
    double  fontbuttoms   = portrait ? (heightlua  / 50) : (heightlua  / 40);
    double  fontsizetitle = portrait ? 12 : 28;

    return Scaffold(
        body: Container(
            color: Colors.red,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: contasizeh - 30 ,
                            color: Colors.red,

                            child:
                            portrait ?
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    "WOP3 - Orientação Vocacional v_1.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fatortitle
                                    ))
                              ],
                            )
                                :
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    "WOP3 - Orientação Vocacional - Administração v_1.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fatortitle
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 00),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(
                                        height: portrait? contasizeh/ 1.6 : contasizeh,
                                        child: Image.asset("images/logo.png",) ,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                    width: widthlua-30,
                                    child:Text(
                                      "Orientação Vocacional.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: fontsizetitle),
                                    )
                                ),
                                SizedBox(height: 20),
                                Visibility(
                                    visible: _userLogado ?  false : true,
                                    child:
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left : widthlua > 1200 ? 280: widthlua > 1000 ? 150: widthlua > 800 ? 120: 0,
                                          right: widthlua > 1200 ? 280: widthlua > 1000 ? 150: widthlua > 800 ? 120: 0,
                                          bottom: 8),
                                      child: TextField(
                                        controller: _controllerEmail,
                                        autofocus: true,
                                        keyboardType: TextInputType.emailAddress,
                                        style: TextStyle(fontSize: 20),
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                                            hintText: "E-mail",
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(32))),
                                      ),
                                    )),
                                Visibility(
                                    visible: _userLogado ?  false : true,
                                    child:
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left : widthlua > 1200 ? 280: widthlua > 1000 ? 150: widthlua > 800 ? 120: 0,
                                          right: widthlua > 1200 ? 280: widthlua > 1000 ? 150: widthlua > 800 ? 120: 0,
                                          bottom: 8),
                                      child:
                                      TextField(
                                        controller: _controllerSenha,
                                        obscureText: true,
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(fontSize: 20),
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                                            hintText: "Senha",
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(32))),
                                      ),)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Center(
                                    child: Text(
                                      _mensagemErro,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 20
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left : widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                                      right: widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                                      top: 2,
                                      bottom: 10),
                                  child: RaisedButton(
                                      child: Text(
                                        "Entrar",
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                      color: Colors.pink,
                                      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(32)
                                      ),
                                      onPressed: () {
                                           _validarCampos();
                                      }),
                                ),
                                //


                              ],
                            ),
                          )
                      )]))

        ));
  }
}
