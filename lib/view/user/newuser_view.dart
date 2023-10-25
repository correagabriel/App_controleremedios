// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Material (
       child: Scaffold(
        backgroundColor: Color(0XFF14233c),
        appBar: AppBar(
          title: const Text("Novo Remédios"),
          centerTitle: true,
          backgroundColor: Color(0XFF60468f),
        ),
        //width: double.infinity,
        //height: double.infinity,
        //child: SizedBox(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                ),
                TextField(
                  maxLength: 11,
                  decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'Nome & Sobrenome',
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color: Color(0XFF60468f))
                          ),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                          )
                          ), 
                ),

                SizedBox(
                  height: 15,
                ),

                TextFormField(
                  maxLength: 11,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu email.';
                    }
                    if(value.length <11){
                      return "CPF Invalido";
                    }
                    return null;
                    },
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'CPF',
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color: Color(0XFF60468f))
                          ),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                          )
                          ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  children: [
                     Expanded(
                      child: ListTile(
                      title: Text('Celular'),
                      subtitle: TextFormField(
                        decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                        ),
                      ),),
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Expanded(
                      child:ListTile(
                        title: Text('Numero Emergência'),
                        subtitle:  TextFormField(
                          decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),
                        ),
                      ),
                  ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                TextFormField(
                  maxLength: 8,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                              return 'Por favor, insira seu email.';
                            }
                            if(value.length <8){
                              return "CPF Invalido";
                            }
                            return null;
                            },
                            decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'Senha',
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color: Color(0XFF60468f))
                          ),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                          )
                          ),
                ),

                SizedBox(
                  height: 15,
                ),

                TextFormField(
                  maxLength: 11,
                            validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, insira seu email.';
                            }
                            if(value.length <11){
                              return "CPF Invalido";
                            }
                            return null;
                            },
                            decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(16,8,16,8),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19)
                          ),
                            labelText: 'CPF',
                            enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color: Color(0XFF60468f))
                          ),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(19),
                            borderSide: const BorderSide(color:Color(0XFF60468f) ,width: 4)
                          )
                          ),
                ),

                SizedBox(
                  height: 100,
                ),

                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0XFFc26ef7),
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
              ],
            ), 
          ),
        ),  
    );
  }
}