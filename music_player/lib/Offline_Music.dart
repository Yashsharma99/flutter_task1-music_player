import 'package:flutter/material.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: camel_case_types
class Offline_Music extends StatefulWidget {
  @override
  _Offline_MusicState createState() => _Offline_MusicState();
}

// ignore: camel_case_types
class _Offline_MusicState extends State<Offline_Music> {
  @override
  AudioPlayer player = new AudioPlayer();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Offline_Music"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic),
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Text(
            //   "Offline Player",
            //   style: TextStyle(
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold,
            //     //color: Colors.white
            //   ),
            // ),
            Container(
              //
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: Colors.blue,
                    elevation: 10,
                    child: Image.asset(
                      "assets/images/pic9.jpg",
                      height: 150,
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          player =
                              await AudioCache().loop('Alan-Walker-Faded.mp3');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          await player.pause();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.stop,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          await player.stop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Card(
                    color: Colors.blue,
                    elevation: 10,
                    child: Image.asset(
                      "assets/images/pic3.jpg",
                      height: 150,
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          player = await AudioCache().loop("intention.mp3");
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          await player.pause();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.stop,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () async {
                          await player.stop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
