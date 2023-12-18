import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class CarouselMedia extends StatefulWidget {
  @override
  _CarouselMediaState createState() => _CarouselMediaState();
}

class _CarouselMediaState extends State<CarouselMedia> {
  final List<String> mediaList = [
    'assets/img/calle.jpg',
    'assets/img/dorcas.jpg',
    'assets/img/jovenes.jpg',
    'assets/img/lafque.jpg',
    'assets/img/lafque2.jpg',
    'assets/img/lafque3.jpg',
    'assets/img/lafque4.jpg',
    'assets/rec/minga.mp4',
    'assets/rec/minga2.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselSlider.builder(
          itemCount: mediaList.length,
          options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayInterval: Duration(seconds: 7),
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            viewportFraction: 0.8,
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final media = mediaList[index];

            if (media.endsWith('.mp4')) {
              VideoPlayerController videoController =
                  VideoPlayerController.asset(media);
              
              videoController.setVolume(0.0);

              ChewieController chewieController = ChewieController(
                videoPlayerController: videoController,
                aspectRatio: 16 / 9,
                autoPlay: true,
                looping: true,
              );

              return Card(
                color: Color(0xFBD5F9FF),
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                elevation: 5.0,
                
                child: Chewie(controller: chewieController),
              );
            } else {
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                elevation: 5.0,
                child: Image.asset(
                  media,
                  fit: BoxFit.cover,
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
