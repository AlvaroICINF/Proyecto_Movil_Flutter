import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //Controladores de nuestros valores de entradas
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController numberPhone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  //Instanciamos nuestra base de datos
  final db=FirebaseFirestore.instance;

  //Creamos funcion de registro que almacene los datos en la base de datos
  registerUser ()async{
    try{
      await db.collection('Users').doc().set({
        "nombre":name.text,
        "apellidos":lastname.text,
        "correo":email.text,
        "telefono":numberPhone.text,
        "contraseña":password.text,
        
      });
    }catch (e){ //creamos la excepción (error)
      print('Error al ingresar datos'+e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( //pagina de registro
      appBar: AppBar(
      backgroundColor: const Color(0xff29C4DB),
        title: Text('Registrarse',style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255,255,255,255),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left:30,top: 30,right: 30,bottom: 10),
              child: Center(
                child:  Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/img/Logo.png',color: const Color(0xff4FE6FC)),
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25,right: 25,bottom: 15),
              child: Text('Si ya tienes una cuenta creada debes volver atrás e iniciar sesión. Si aún no la creaste, puedes registrarte rellenando el formulario.',
              style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),
            ),
            //Creamos recuadro de ingreso de nombres
             Padding(padding: const EdgeInsets.only(left: 20,top: 50,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: name,
              style: const TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person, color: Color(0xff86E6F4),),
                labelText: 'Ingrese su primer nombre',
                labelStyle: const TextStyle(color: Color(0xff86E6F4),fontWeight: FontWeight.w500),
                hintText: 'Escriba su primer nombre aquí',
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
              ),
            ),
            ),

            //Creamos recuadro de ingreso de apellidos
            Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: lastname,
              style: TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.people, color: Color(0xff86E6F4)),
                labelText: 'Ingrese sus apellidos',
                labelStyle: TextStyle(color: Color(0xff86E6F4),fontWeight: FontWeight.w500),
                hintText: 'Escriba sus apellidos aquí',
                hintStyle: TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,color: Color(0xff86E6F4)),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff86E6F4))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              ),
            ),
            ),

            //Creamos recuadro de ingreso de apellidos
            Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: email,
              style: TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Color(0xff86E6F4)),
                labelText: 'Ingrese su correo electrónico',
                labelStyle: TextStyle(color: Color(0xff86E6F4),fontWeight: FontWeight.w500),
                hintText: 'Escriba su correo aquí',
                hintStyle: TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,color: Color(0xff86E6F4)),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff86E6F4))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              ),
            ),
            ),

            //Creamos recuadro de ingreso de número telefónico
            Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: numberPhone,
              style: TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.smartphone, color: Color(0xff86E6F4)),
                labelText: 'Ingrese su número de teléfono',
                labelStyle: TextStyle(color: Color(0xff86E6F4),fontWeight: FontWeight.w500),
                hintText: 'Escriba su número de teléfono aquí',
                hintStyle: TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,color: Color(0xff86E6F4)),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff86E6F4))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              ),
            ),
            ),

            //Creamos recuadro de ingreso de contraseña
            Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: password,
              style: TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password, color: Color(0xff86E6F4)),
                labelText: 'Ingrese su contraseña',
                labelStyle: TextStyle(color: Color(0xff86E6F4),fontWeight: FontWeight.w500),
                hintText: 'Escriba su contraseña aquí',
                hintStyle: TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,color: Color(0xff86E6F4)),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff86E6F4))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              obscureText: true,
              ),
            ),
            ),
            
            //Creamos recuadro de confirmacion de contraseña
            Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(controller: confirmPassword,
              style: TextStyle(color: Color(0xff86E6F4)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock     
                , color: Color(0xff86E6F4),),
                labelText: 'Confirme su contraseña',
                labelStyle: TextStyle(color: Color(0xff86E6F4),fontWeight: FontWeight.w500),
                hintText: 'Escriba nuevamente su contraseña',
                hintStyle: TextStyle(color: Color(0xff86E6F4)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1,color: Color(0xff86E6F4)),
                  borderRadius: BorderRadius.circular((15),
                  )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff86E6F4))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff86E6F4),
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15),
                )
              ),
              obscureText: true,
              ),
            ),
            ),

            //Creamos botton para registrar el usuario y almacenarlo en la base de datos
            Padding(padding: const EdgeInsets.all(25),
            child: ElevatedButton(onPressed: (){
              print('registro realizado');
              registerUser();
              //limpiar celdas
              name.clear();
              lastname.clear();
              email.clear();
              numberPhone.clear();
              lastname.clear();
              confirmPassword.clear();
            },
          
          
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff29C4DB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text('Registrarme',style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18, color: Colors.white),
            ),),),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('si tienes cuenta,',
                  style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, '/login');
                  }, child: const Text('Ingresa',
                  style: TextStyle(fontSize: 15,color: Color(0xff29C4DB),fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
                  
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

