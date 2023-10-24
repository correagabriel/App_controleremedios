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
      
       child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome & Sobrenome',
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder()
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

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Repetir Senha',
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(
                  height: 150,
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
              ],
            ), 
          ),
        ),
      ),
    );
  }
}