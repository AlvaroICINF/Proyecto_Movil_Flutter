import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/rol/admin/navigationbar.dart';


class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({Key? key}) : super(key: key);

  @override
  _HomePageAdminState createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Diseñamos nuestro appbar el cual nos acompañara en nuestras paginas
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: const Color(0xff29C4DB),
            centerTitle: true,
            title: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(5),),
              Image.asset('assets/img/Logo.png',height: 60,width: 70,),
              const SizedBox(width: 8,),
              Text(
              "IDDP",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255,255,255,255),
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            ],),
          automaticallyImplyLeading: false,

          ),
      ),
      //llamamos a navbar
      body: const NavigationExampleAdmin(),
    );
  }
}
