import 'package:flutter/material.dart';
import 'package:proyecto_iddp/navbar/calendar.dart';
import 'package:proyecto_iddp/navbar/notices.dart';
import 'package:proyecto_iddp/navbar/hymnal.dart';
import 'package:proyecto_iddp/navbar/home/home.dart';
import 'package:proyecto_iddp/navbar/profile/profile.dart';




class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});
  
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  
  @override
  //Creamos nues widget capaz de navegar entre pagina y conectarolo..Navbar
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color(0xff29C4DB),
        selectedIndex: currentPageIndex,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        destinations: const <Widget>[
          
          NavigationDestination(
            selectedIcon: Icon(Icons.home,color: Colors.white,),
            icon: Icon(Icons.home_outlined),
            
            label: 'Inicio',
          ),
          
          
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications_sharp,color: Colors.white,),
            icon: Badge(child: Icon(Icons.notifications_sharp,color: Colors.black,)),
            label: 'Avisos',
          ),
          
          
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle_sharp,color: Colors.white,),
            icon: Icon(Icons.account_circle_sharp,color: Colors.black,),
            label: 'Perfil',
          ),
          
        ],
      ),
      body: <Widget>[
       //Añadimos a nuestro navbar todas las clases con sus funciones de cada pagina

      Home(),
       
      Avisos(),

      Profile(),




      ][currentPageIndex],
    );
  }
}
