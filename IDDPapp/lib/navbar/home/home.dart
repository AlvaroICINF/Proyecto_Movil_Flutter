import 'package:flutter/material.dart';
import 'package:proyecto_iddp/navbar/home/homeElements/carouselMedia.dart';
import 'package:proyecto_iddp/navbar/home/homeElements/event.dart';
import 'package:proyecto_iddp/navbar/home/homeElements/noticesweek.dart';
import 'package:proyecto_iddp/navbar/home/homeElements/youtubeVideo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Center(child: 
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        //Posicionamos y llamos a nuestra clase video que contiene el directo/video de reunion
        YoutubeVideo(),
        SizedBox(height: 15,),
        //Incluimos imagen de proximo evento
        Padding(padding: EdgeInsets.only(left: 10),
        child: Text('Próximo evento', textAlign: TextAlign.start, style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,color: Color(0xFF000000)),),),
        SizedBox(height: 20),
        Event(),
        SizedBox(height: 30),
        //avisos semanales
        const Padding(padding: EdgeInsets.only(left: 10),
        child: Text('Avisos de la semana', textAlign: TextAlign.start, style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),),
        const SizedBox(height: 20),
        //cards avisos semanales
        CardNotice(firstText: 'Lunes', secondText: 'Culto de jovenes: 20:00 '),
        CardNotice(firstText: 'Martes', secondText: 'Lorem ipsum dolor sit amet. Id autem distinctio in fugiat excepturi ut commodi asperiores aut tempora accusantium. Et quam autem est totam sunt qui culpa nihil? Non nisi veniam est similique eaque non voluptas nesciunt. '),
        CardNotice(firstText: 'Miércoles', secondText: 'ui internos sunt sed quidem dicta nam quidem dignissimos aut quia laboriosam aut tenetur nihil et dolorem quas '),
        CardNotice(firstText: 'Jueves', secondText: 'Eos harum illum sed sint tenetur ut modi illo. Aut iure modi qui dolores illo ex quod repellat et perferendis quos eum maxime vitae. Quo temporibus esse est recusandae provident est similique perspiciatis est commodi omnis est nihil laborum. '),
        CardNotice(firstText: 'Viernes', secondText: 'Et quam autem est totam sunt qui culpa nihil? Non nisi veniam est similique eaque non voluptas nesciunt. Ut excepturi dolorem et doloremque sint sed nihil dolor '),
        CardNotice(firstText: 'Sábado', secondText: 'est porro voluptate et consequatur illum est voluptatem tenetur? '),
        CardNotice(firstText: 'Domingo', secondText: 'Qui iusto quos in harum dignissimos sit deserunt architecto aut officia nemo. In dignissimos atque et molestias blanditiis aut laborum autem quo magnam quisquam id nisi fuga.'),
        CardNotice(firstText: 'Avisos', secondText: 'orem ipsum dolor sit amet. Id autem distinctio in fugiat excepturi ut commodi asperiores aut tempora accusantium. Et quam autem '),
        CardNotice(firstText: 'Salidas', secondText: 'quos eum maxime vitae. Quo temporibus esse est recusandae provident est similique perspiciatis est commodi omnis est nihil laborum.'),
        CardNotice(firstText: 'Varios', secondText: 'Qui internos sunt sed quidem dicta nam quidem dignissimos aut quia laboriosam aut tenetur nihil et dolorem quas. Eos harum illum sed sint tenetur ut modi illo. Aut iure modi qui dolores illo ex quod repellat et perferendis quos eum maxime vitae. Quo temporibus esse est recusandae provident est similique perspiciatis est commodi omnis est nihil laborum. '),
        SizedBox(height: 20,),
        //Carrusel de imagenes
        CarouselMedia(),
        SizedBox(height: 20,)

      ],)),
    );
  }
}
