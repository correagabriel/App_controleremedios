import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF14233c),
    
      appBar: AppBar(
        title: const Text("Esqueceu a Senha"),
        centerTitle: true,
        backgroundColor: Color(0XFF60468f),
        leading: const BackButton(
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Digite seu CPF e mandaremos um link ao seu telefone',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'CPF',
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),

          OutlinedButton(
            onPressed: (){
              Navigator.pushNamed(context, 'principal');
            },
            style: OutlinedButton.styleFrom(
              minimumSize: Size(200, 50),
              backgroundColor: Colors.deepPurple[200],
            ),
            child: Text(
              'Redefina sua senha'
            ),
          )
        ],
      ),
    );
  }
}