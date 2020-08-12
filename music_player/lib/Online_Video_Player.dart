//import 'dart:html';

import 'package:flutter/material.dart';
//import 'video.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

// ignore: camel_case_types
class Online_Video extends StatefulWidget {
  Online_Video({Key key}) : super(key: key);
  @override
  _Online_VideoState createState() => _Online_VideoState();
}

// ignore: camel_case_types
class _Online_VideoState extends State<Online_Video> {
  VideoPlayerController _Controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    _Controller = VideoPlayerController.network(
        'https://vipkhan.mobi/cache/CAT_punjabi-videos/CAT_punjabi-video-song/5472/mp4/mp4-720p/Yummy%20Justin%20Bieber%20-%20HDYaar.Com.mp4');
    _initializeVideoPlayerFuture = _Controller.initialize();
    _Controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _Controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      //  backgroundColor: Colors.,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Online_Videos"),
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
        child: Center(
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            // ignore: missing_return
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done)
                return AspectRatio(
                  aspectRatio: _Controller.value.aspectRatio,
                  child: VideoPlayer(_Controller),
                );
              else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_Controller.value.isPlaying) {
              _Controller.pause();
            } else {
              // If the video is paused, play it.
              _Controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _Controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // This trailing co
    );
  }
}
