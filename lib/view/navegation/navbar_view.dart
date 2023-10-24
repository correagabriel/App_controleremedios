// ignore_for_file: prefer_const_constructors

import 'package:appplotze_trabalho/view/app/listmedicines_view.dart';
import 'package:appplotze_trabalho/view/app/medicinesinbox_view.dart';
import 'package:appplotze_trabalho/view/app/newpill_view.dart';
import 'package:flutter/material.dart';

class NavegationBarr extends StatefulWidget {
  const NavegationBarr({super.key});

  @override
  State<NavegationBarr> createState() => _NavegationBarrState();
}

class _NavegationBarrState extends State<NavegationBarr> {
  @override

  // ignore: override_on_non_overriding_member
  int _index = 0;
  final screens = [
    NewPill(),
    Listmedicines(),
    MedicinesinBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value){
          setState(() {
            _index = value;
          });
        },
        backgroundColor: Color(0XFF60468f),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Novos Remédios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Lista de Remédios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Caixa de Remédios',
          ),
        ],
      ),
    );
  }
}