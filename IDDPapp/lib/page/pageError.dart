import 'package:flutter/material.dart';

class PageError extends StatefulWidget {
  const PageError({super.key});

  @override
  State<PageError> createState() => _PageErrorState();
}

class _PageErrorState extends State<PageError> {
  @override
  Widget build(BuildContext context) {
    //Creamos una página de error por si las rutas fallan
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 300,),
          Text('Página no encontrada'),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/');
          },
          style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 193, 17, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
          child: Text('Volver',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),

           )
        ],)
      ),
    );
  }
}