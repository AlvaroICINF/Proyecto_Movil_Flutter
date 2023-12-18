import 'package:flutter/material.dart';
import 'package:proyecto_iddp/dbTools/adddb.dart';
import 'package:proyecto_iddp/dbTools/readdb.dart';
import 'package:proyecto_iddp/page/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyecto_iddp/page/pageError.dart';
import 'package:proyecto_iddp/navbar/profile/profileElements/login.dart';
import 'package:proyecto_iddp/navbar/profile/profileElements/register.dart';
import 'package:proyecto_iddp/rol/admin/homepage.dart';
import 'package:proyecto_iddp/rol/user/homepage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'page/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      //Complemento para usar cambio de idiomas, especificamente en calendario.
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: const [
         Locale('es')
      ],
      debugShowCheckedModeBanner: false,
      title: 'IDDP',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Color(0xff29C4DB)), 
      ),
      //Llamamos a nuestra pagina donde tiene todas las redirreciones
      initialRoute: '/admin',
      routes: {
        '/':(context)=>const HomePage(),
        '/register':(context)=>const Register(),
        '/login':(context)=>const Login(),
        '/user':(context)=>const HomePageUser(),
        '/admin':(context)=>const HomePageAdmin(),
        '/viewData':(context)=>const ReadDb(),
        '/addData':(context)=>const AddData(),




      },
      onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (context)=>const PageError());
      },
      
      
    );
    
  }
}

