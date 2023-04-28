import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button_Model extends StatelessWidget {
  Button_Model({required this.x, required this.y});
  var x;
  String? y;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: x,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "$y",
            style: GoogleFonts.cairo(fontSize: 18),
          ),
        ));
  }
}
