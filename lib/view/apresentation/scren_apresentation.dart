// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Telaapresentacao extends StatefulWidget {
  const Telaapresentacao({super.key});

  @override
  State<Telaapresentacao> createState() => _TelaapresentacaoState();
}

class _TelaapresentacaoState extends State<Telaapresentacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Center(child: Image.asset("assets/logo_app_semfundo.png",height: 250,)),
          SizedBox(
            height: 30,
          ),

          InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'principal');
            },
             child: Ink.image(
                width: 300,
                height: 200,
                image: AssetImage("assets/logo_app_semfundo.png"),
             ),

          ),
          
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.grey.shade600,
              foregroundColor: const Color.fromARGB(255, 8, 6, 6),
              minimumSize: Size(200, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
            ),
            onPressed: () {
              //
              // NAVEGAR PARA ROTA
              //
              Navigator.pushNamed(context, 'principal');
            },
              child: Text('Entrar'),
              ),
        ],
      )
    );
  }
}