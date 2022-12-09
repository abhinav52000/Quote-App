import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/search_page.dart';
import 'package:quotes_app/Utitlity/const.dart';

class Mycard extends StatefulWidget {
  const Mycard({
    super.key,
    required this.textdata,
    required this.cardnumber,
  });
  final String textdata;
  final int cardnumber;

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          SearchPage.id,
          arguments: widget.cardnumber,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black12],
            stops: [0.5],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        constraints: BoxConstraints.tightFor(
          height: 50,
          width: width,
        ),
        alignment: Alignment.center,
        child: Text(
          widget.textdata,
          style: commontextstyle,
        ),
      ),
    );
  }
}
