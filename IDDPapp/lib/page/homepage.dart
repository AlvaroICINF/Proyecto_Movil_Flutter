import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/page/navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: const NavigationExample(),
    );
  }
}
