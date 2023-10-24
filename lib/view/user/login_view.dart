// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 250, 0, 230),
                child: Column(
                  children: [
                    TextField(
                      maxLength: 11 ,
                      decoration: InputDecoration(
                          labelText: 'CPF', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: true,
                      maxLength: 8,
                      decoration: InputDecoration(
                          labelText: 'Senha', border: OutlineInputBorder()),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey.shade600,
                        foregroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      onPressed: () {
                        //
                        // NAVEGAR PARA ROTA
                        //
                        Navigator.pushNamed(context, 'navbar');
                      },
                      child: Text('ENTRAR'),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    
                    TextButton(onPressed: () {
                        //
                        // NAVEGAR PARA ROTA
                        //
                        Navigator.pushNamed(context, 'forgetpassword');
                    }, 
                    child: Text('EQUECI A SENHA')
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.shade600,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                onPressed: () {
                  //
                  // NAVEGAR PARA ROTA
                  //
                  Navigator.pushNamed(context, 'newuser');
                },
                child: Text('NOVO USUÁRIO'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
