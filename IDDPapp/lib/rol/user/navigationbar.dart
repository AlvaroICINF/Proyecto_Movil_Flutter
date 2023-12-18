import 'package:flutter/material.dart';
import 'package:proyecto_iddp/rol/user/navbar/calendar_user.dart';
import 'package:proyecto_iddp/rol/user/navbar/home.dart';
import 'package:proyecto_iddp/rol/user/navbar/hymnal.dart';
import 'package:proyecto_iddp/rol/user/navbar/notices.dart';
import 'package:proyecto_iddp/rol/user/navbar/profile.dart';





class NavigationExampleUser extends StatefulWidget {
  const NavigationExampleUser({super.key});
  
  @override
  State<NavigationExampleUser> createState() => _NavigationExampleUserState();
}

class _NavigationExampleUserState extends State<NavigationExampleUser> {
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
            selectedIcon: Icon(Icons.menu_book,color: Colors.white,),
            icon: Icon(Icons.menu_book,color: Colors.black,),
            
            label: 'Himnario',
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

      HomeUser(),
       
      AvisosUser(),

      HimnarioUser(),

      ProfileUser(),




      ][currentPageIndex],
    );
  }
}
