import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Controladores de nuestros valores de entradas
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  validateData() async{
    try{
      CollectionReference dbCol= FirebaseFirestore.instance.collection('Users');
      QuerySnapshot nombre= await dbCol.get();

      if (nombre.docs.length != 0) {
      // Verificar si el nombre y la contraseña son 'admin'
      if (name.text == 'admin' && password.text == 'admin123') {
        Navigator.pushReplacementNamed(context, '/admin');
      } else {
        // Creamos un ciclo para recorrer cada documento que existe
        for (var cursor in nombre.docs) {
          // Validamos el nombre ingresado con el almacenado en la base de datos
          if (cursor.get('nombre') == name.text) {
            print('correcto');
            if (cursor.get('contraseña') == password.text) {
              Navigator.pushReplacementNamed(context, '/user');
            }
          }
        }
      }
    }
      //si no funciona lo ejecutado arriba devuelve la excepcion
    }catch(e){
      print('Error'+e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color(0xff29C4DB),
        title: Text('Iniciar sesión',style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255,255,255,255),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      
      body:  SingleChildScrollView(
        child: Column(
          children: [
            //Añadimos el logo y un texto
            Padding(
              padding: const EdgeInsets.only(left:30,top: 30,right: 30,bottom: 10),
              child: Center(
                child:  SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/img/Logo.png',color: const Color(0xff4FE6FC)),
                  
                ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left:25,right: 25,bottom: 15),
              child: Text('Si no tienes una cuenta creada debes volver atrás y registrarte. Si ya la creaste puedes entrar a tu cuenta.',
              style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),
            ),

            //Creamos recuadro de validación de nombre
            Padding(padding: const EdgeInsets.only(
              left: 20,top: 40,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: name,
              style: const TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Color(0xff86E6F4),),
                labelText: 'Ingrese su nombre ',
                labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                hintText: 'Escriba su nombre aquí',
                hintStyle: const TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color:  Color(0xff86E6F4),),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color:  Color(0xff86E6F4),)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color:  Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              ),
            ),
            ),

            //Creamos recuadro de validación de contraseña
            Padding(padding: const EdgeInsets.only(left: 20,top: 40,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: password,
              style: const TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: Color(0xff86E6F4)),
                labelText: 'Ingrese su contraseña ',
                labelStyle: const TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                hintText: 'Escriba su contraseña aquí',
                hintStyle: const TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Color(0xff86E6F4)),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff86E6F4))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              obscureText: true ,
              ),
            ),
            ),

            //Creamos botton para 
            Padding(padding: EdgeInsets.all(25),
            child: ElevatedButton(onPressed: (){
              validateData();
              //limpiar celdas
              

            },
          
          
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff29C4DB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text('Ingresar',
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18, 
              color: Colors.white),
            ),),),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('si no tienes cuenta,',
                  style: TextStyle(fontSize: 12,),
                  textAlign: TextAlign.center,),
                  //boton para ir al registro
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, '/register');
                  }, child: const Text('Regístrate',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff29C4DB),
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}