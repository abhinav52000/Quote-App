import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_app/Utitlity/card.dart';
import 'package:quotes_app/Utitlity/const.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const id = 'Main Page';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   shadowColor: Colors.white12,
      //   title:
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: const [0.2, 0.4, 0.8],
            colors: [
              Colors.blue.shade300,
              Colors.blue.shade400,
              Colors.pink.shade300
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'aMVaR\n     QUOTES',
              style: GoogleFonts.aleo(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Mycard(
                  textdata: cardTitle[0],
                  cardnumber: 0,
                ),
                Mycard(
                  textdata: cardTitle[1],
                  cardnumber: 1,
                ),
                Mycard(
                  textdata: cardTitle[2],
                  cardnumber: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
