import 'dart:ui';

import 'package:crypto_bite/History.dart';
import 'package:crypto_bite/Home.dart';
import 'package:crypto_bite/Profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'market.dart';

class GlassmorphismBottomNavigationBar extends StatefulWidget {
  const GlassmorphismBottomNavigationBar({super.key});

  @override
  State<GlassmorphismBottomNavigationBar> createState() => _GlassmorphismBottomNavigationBarState();
}

class _GlassmorphismBottomNavigationBarState extends State<GlassmorphismBottomNavigationBar> {
  final screen=[Home(),History(),Market(),ProfilePage()];

int _selectedIndex=0;
  void OnItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return
    Scaffold(body: screen[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust the blur to enhance the glassmorphism effect
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black26.withOpacity(0.1),
              unselectedItemColor: Colors.grey.shade600,
              selectedItemColor:const Color(0xff28DAA6),
              items:
              const [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.history),label: "History"),
                BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined),label: "Marcket"),
                BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: "Profile"),
              ] ,
          currentIndex:_selectedIndex,
            onTap: OnItemTaped,
      
          ),
        ),
      
      
      ),
    );

  }
}