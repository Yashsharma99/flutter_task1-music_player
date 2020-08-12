//import 'dart:html';

import 'package:flutter/material.dart';
//import 'video.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

// ignore: camel_case_types
class Offline_Video extends StatefulWidget {
  Offline_Video({Key key}) : super(key: key);
  @override
  _Offline_VideoState createState() => _Offline_VideoState();
}

// ignore: camel_case_types
class _Offline_VideoState extends State<Offline_Video> {
  VideoPlayerController _Controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  // void initState() {
  //   _Controller = VideoPlayerController.asset("G.O.A.T Diljit Dosanjh.mp4");
  //   _initializeVideoPlayerFuture = _Controller.initialize();
  //   // _Controller.setLooping(true);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // Ensure disposing of the VideoPlayerController to free up resources.
  //   _Controller.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      //  backgroundColor: Colors.,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Offline_Videos"),
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
        margin: EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(children: <Widget>[
          Center(
              child: Card(
                  child: FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Container(child: VideoPlayer(_Controller)),
                          );
                        } else {
                          return AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Card(
                              child: Container(
                                color: Colors.black87,
                                height: 100,
                              ),
                              shape: Border.all(width: 5),
                            ),
                          );
                        }
                      }))),
          Container(
            padding: EdgeInsets.only(bottom: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 100),
                child: Card(
                  child: RaisedButton(
                    child: Text(
                      'Play',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.redAccent,
                    onPressed: () {
                      setState(() {});
                      _Controller = VideoPlayerController.asset(
                          'assets/Videos/G.O.A.T.mp4');
                      _initializeVideoPlayerFuture = _Controller.initialize();
                      _Controller.setVolume(1.0);
                      _Controller.play();
                    },
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 100),
                child: Card(
                  child: RaisedButton(
                    child: Text('Pause',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    color: Colors.redAccent,
                    onPressed: () {
                      _Controller.pause();
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
          ),
        ]),
      ),
    );
  }
}
