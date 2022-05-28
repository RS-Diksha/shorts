import 'package:flutter/material.dart';
import 'package:shorts/video_items.dart';
import 'package:shorts/dataModel.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('VideoPlayer')),
        body: Container(
          height: double.infinity,
          child: PageView.builder(
            itemCount: Videos.Items.length,
            itemBuilder: (cntx, index) => VideoItems(
                videoPlayerController: VideoPlayerController.network(
              Videos.Items[index],
            )),
          ),
        ));
  }
}
