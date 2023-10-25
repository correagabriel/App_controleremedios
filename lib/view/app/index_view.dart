// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0XFF14233c),
      
      appBar: AppBar(
        title: const Text("Sobre o Aplicativo"),
        centerTitle: true,
        backgroundColor: Color(0XFF60468f),
        leading: const BackButton(
        ),
      ),
      body: const Column(
        children: <Widget> [
          SizedBox(
            height: 50,
          ),
          Text(
            'SOBRE',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color(0XFF848c9a),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.left,
            'Tema:',
            style: TextStyle(
              fontSize: 20,
              color: Color(0XFF848c9a),
            ),
          ),
          Text(
            textAlign: TextAlign.justify,
            'O aplicativo tem como principal função ajudar pessoas idosas ou até mesmo pessoas que convivem com elas, ajudando-as em seu consumo de medicamentos, possuindo ligação entre o aplicativo e porta-remédios eletrônico.',
          style: TextStyle(
              fontSize: 20,
              color: Color(0XFF848c9a),
            ),
          ),        
          SizedBox(
            height: 100,
          ),
	        Text(
            'Desenvolvido por: ',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              color: Color(0XFF848c9a),
            ),
          ),
        ],
      ),
    );
  }
}