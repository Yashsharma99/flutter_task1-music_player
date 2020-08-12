//import 'dart:html';

import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Offline_Video_Player.dart';
import 'package:music_player/Online_Video_Player.dart';
import 'Offline_Music.dart';
import 'Online_Music.dart';
//import 'package:characters/characters.dart';

class My_Music_Player extends StatefulWidget {
  @override
  _My_Music_PlayerState createState() => _My_Music_PlayerState();
}

class _My_Music_PlayerState extends State<My_Music_Player> {
  @override
  Widget _buildCarosual() {
    return Container(
        height: 300,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          boxFit: BoxFit.cover,
          indicatorBgPadding: 0.2,
          dotColor: Colors.teal,
          dotSize: 7,
          images: [
            AssetImage('assets/images/pic1.jpg'),
            AssetImage('assets/images/pic2.jpg'),
            //    AssetImage('assets/images/pic3.png'),
            AssetImage('assets/images/pic4.jpg'),
          ],
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("My_Music_Player"),
        actions: <Widget>[
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
      drawer: Drawer(
        elevation: 10,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5)),
            Text(
              "My_Music Player",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: EdgeInsets.all(5),
            ),

            // Divider(
            //   color: Colors.black,
            // ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountEmail: Text('ansh99sh@gmail.com'),
              accountName: Text('Ansh'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Music"),
                leading: Icon(
                  Icons.music_note,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Subscription"),
                leading: Icon(
                  Icons.subscriptions,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Change Language"),
                leading: Icon(
                  Icons.language,
                  color: Colors.teal,
                ),
              ),
            ),
            Divider(
              color: Colors.teal,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          _buildCarosual(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Card(
                      child: RaisedButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Offline_Music()));
                        },
                        child: Image.asset(
                          'assets/images/pic5.jpg',
                          width: 100,
                          height: 90,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Offline_Music",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    //Title(color: null, child: Text("Offline_music")),
                  ],
                ),
              ),
              // mainAxisAlignment: MainAxisAlignment.start,

              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Card(
                      child: RaisedButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Online_Music()));
                        },
                        child: Image.asset(
                          'assets/images/pic8.png',
                          width: 100,
                          height: 90,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Online_Music",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Card(
                      child: RaisedButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Offline_Video()));
                        },
                        child: Image.asset(
                          'assets/images/pic6.jpg',
                          width: 100,
                          height: 90,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Offline_Video",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              // mainAxisAlignment: MainAxisAlignment.start,

              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Card(
                          child: RaisedButton(
                            color: Colors.redAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Online_Video()));
                            },
                            child: Image.asset(
                              'assets/images/pic7.jpg',
                              width: 100,
                              height: 90,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text(
                          "Online_Video",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
