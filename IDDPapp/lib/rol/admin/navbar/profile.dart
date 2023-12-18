import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/navbar/profile/profileElements/register.dart';

class ProfileAdmin extends StatefulWidget {
  const ProfileAdmin({Key? key}) : super(key: key);

  @override
  _ProfileAdminState createState() => _ProfileAdminState();
}

class _ProfileAdminState extends State<ProfileAdmin> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Text('Bienvenido/a', style:
             GoogleFonts.robotoMono(
              color:const Color(0xff29C4DB),
              fontWeight: FontWeight.bold,
              fontSize: 30
             ),),
            Padding(
              padding: const EdgeInsets.only(left:25,right: 25,top: 5,bottom: 15),
              child: Text('Aquí puedes registrarte para recibir las notificaciones semanales o ingresar si ya tienes una cuenta.',
              style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),
            ), 
            SizedBox(height: 100,),
            //boton para registrarse
            SizedBox(width: 250,
              child: Padding(padding: EdgeInsets.all(25),
                child: ElevatedButton(onPressed: (){
                  //llamamos a nuestra ruta de login
                  Navigator.pushReplacementNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff29C4DB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text('Cerrar sesión',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                ),),),
            ),
          ],
        ),),
    );
  }
}
