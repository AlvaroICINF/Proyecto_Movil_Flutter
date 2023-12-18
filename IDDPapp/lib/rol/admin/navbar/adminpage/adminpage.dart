import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/dbTools/adddb.dart';
import 'package:proyecto_iddp/dbTools/readdb.dart';
import 'package:proyecto_iddp/rol/admin/navbar/adminpage/adminpageElements/addData.dart';
import 'package:proyecto_iddp/rol/admin/navbar/adminpage/adminpageElements/viewData.dart';


class CalendarioAdmin extends StatefulWidget {
  const CalendarioAdmin({Key? key}) : super(key: key);

  @override
  _CalendarioAdminState createState() => _CalendarioAdminState();
}

class _CalendarioAdminState extends State<CalendarioAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:25.0,left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Panel de administración', style:
                    GoogleFonts.robotoMono(
                      color:const Color(0xff4FE6FC),
                      fontWeight: FontWeight.bold,
                      fontSize: 21
                    ),
                  ),
                ),
              ),
              const ViewData(),

              const SizedBox(height: 10,),

              const AddMember()

            ],
          ),
      ),
      );
  }
}


