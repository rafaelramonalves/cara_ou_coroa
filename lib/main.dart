import 'package:cara_ou_coroa/gamePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: TelaPrincipal()
  ));
}
class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/logo.png"),
              GestureDetector(
                child: Image.asset("images/botao_jogar.png"),
                onTap: (){
                  var imagem = caraOuCoroa();
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => gamePage(imagem)
                      ));
                },
              )
            ],
          ),
        )
    );
  }
  caraOuCoroa(){
    var sorteio = Random().nextInt(2);
    if(sorteio==0){
      return "images/moeda_coroa.png";
    }else{
      return "images/moeda_cara.png";
    }
  }
}
