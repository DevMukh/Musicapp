import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularSongs extends StatelessWidget {
  const PopularSongs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this one is enhanced popular list check and play all its list of songs
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text(
          'Popular Songs',
          style: GoogleFonts.aclonica(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.orangeAccent),
        ),
        backgroundColor: Colors.black45,
      ),
    );
  }
}
