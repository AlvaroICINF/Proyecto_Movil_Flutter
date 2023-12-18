import 'package:flutter/material.dart';
import 'package:date_count_down/date_count_down.dart';
import 'package:google_fonts/google_fonts.dart';

class CountTimer extends StatefulWidget {
  CountTimer({Key? key}) : super(key: key);

  @override
  _CountTimerState createState() => _CountTimerState();
}

class _CountTimerState extends State<CountTimer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          CountDownText(
            due: DateTime.parse("2023-12-22 20:00:00"),
            finishedText: "Done",
            showLabel: true,
            longDateName: true,
            daysTextLong: ' días ',
            hoursTextLong: ' horas ',
            minutesTextLong: ' minutos ',
            secondsTextLong: ' segundos ',
            style: GoogleFonts.robotoFlex(textStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 10,fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
