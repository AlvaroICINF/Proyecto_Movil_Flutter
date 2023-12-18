import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Himnario extends StatefulWidget {
  const Himnario({Key? key}) : super(key: key);

  @override
  _HimnarioState createState() => _HimnarioState();
}

class _HimnarioState extends State<Himnario> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.menu_book,
                size: 35,
                color: Colors.red,
              ),
              SizedBox(width: 8.0),
              Text(
                'Himnario',
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
