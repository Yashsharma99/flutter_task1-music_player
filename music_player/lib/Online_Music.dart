import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Online_Music extends StatefulWidget {
  @override
  _Online_MusicState createState() => _Online_MusicState();
}

class _Online_MusicState extends State<Online_Music> {
  @override
  final assetsAudioPlayer = AssetsAudioPlayer();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Online_Music"),
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
      // backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //   Text(
            //     "Online Player",
            //     style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Card(
                    color: Colors.blue,
                    elevation: 10,
                    child: Image.asset(
                      "assets/images/pic11.jpg",
                      height: 150,
                      width: 250,
                      fit: BoxFit.cover,
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
                        onPressed: () {
                          assetsAudioPlayer.open(
                            Audio.network(
                                "https://raw.githubusercontent.com/ramwadhwa1031/flutter-class/master/Alan%20Walker%2C%20Sabrina%20Carpenter%20%26%20Farruko%20-%20On%20My%20Way.mp3"),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          assetsAudioPlayer.pause();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.stop,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          assetsAudioPlayer.stop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Card(
                    color: Colors.blue,
                    elevation: 10,
                    child: Image.asset(
                      "assets/images/pic12.png",
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
                        onPressed: () {
                          assetsAudioPlayer.open(
                            Audio.network(
                                "https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/94/25/9c/94259c23-84ee-129d-709c-577186cbe211/mzaf_5653537699505456197.plus.aac.p.m4a"),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          assetsAudioPlayer.pause();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.stop,
                          size: 40,
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          assetsAudioPlayer.stop();
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

      // ),
    );
  }
}
