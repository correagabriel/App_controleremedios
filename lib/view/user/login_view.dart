  // ignore_for_file: prefer_const_constructors

  import 'package:flutter/material.dart';

  class PrincipalView extends StatefulWidget {
    const PrincipalView({super.key});

    @override
    State<PrincipalView> createState() => _PrincipalViewState();
  }

  class _PrincipalViewState extends State<PrincipalView> {

    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      return Material(
        child: Scaffold(
          backgroundColor: Color(0XFF14233c),
          //width: double.infinity,
          //height: double.infinity,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 230, 0, 230),
                  child: Column(
                    children: [
                      TextFormField(
                            maxLength: 11,
                            validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, insira seu CPF';
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
                        height: 15,
                      ),

                      TextFormField(
                            maxLength: 8,
                            validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, insira sua senha';
                            }
                            if(value.length <8){
                              return "Senha muita curta";
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
                            labelText: 'SENHA',
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
                    botaoPrincipalClicado();
                    Navigator.pushNamed(context, 'newuser');
                  },
                  child: Text('NOVO USUÁRIO'),
                ),
              ],
            ),
          ),
        ),
        ),
      );
    }
    botaoPrincipalClicado(){
      if(_formKey.currentState!.validate()){
        print("Form Valido"); 
      } else{
        print("Form Invalido");
      }
    }
}
