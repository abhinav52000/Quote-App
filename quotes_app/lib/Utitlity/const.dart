import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle commontextstyle = GoogleFonts.anekLatin(
  fontSize: 23,
  color: Colors.black,
);

OutlineInputBorder outlineborder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(
    16,
  ),
  borderSide: const BorderSide(
    color: Colors.black,
  ),
);

List<String> cardTitle = [
  'Author  Quote',
  'Search  any  Quote',
  'Favourite  Quote'
];
