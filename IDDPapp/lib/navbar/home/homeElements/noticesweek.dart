import 'package:flutter/material.dart';

class CardNotice extends StatefulWidget {
  final String firstText;
  final String secondText;

  const CardNotice({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  _CardNoticeState createState() => _CardNoticeState();
}

class _CardNoticeState extends State<CardNotice> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFBD5F9FF),
      elevation: 2, 
      margin: const EdgeInsets.only(left:16.0,right:16.0,bottom: 8,top: 8),
      child: Row(
        children: [
          // Creamos la parte izquierda donde va el dia de la sema y varios
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: 100.0, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.firstText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          
          
          // Creamos la parte derecha donde van los avisos de la semana
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 50.0,
                  maxHeight: double.infinity,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.secondText,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
