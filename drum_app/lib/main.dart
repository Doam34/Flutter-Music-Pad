// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: DrumPage(),
    );
  }
}

class DrumPage extends StatefulWidget {
  const DrumPage({super.key});

  @override
  State<DrumPage> createState() => _DrumPageState();
}

void playAudio(String voice) {
  final player = AudioPlayer();
  player.play(AssetSource(voice + '.wav'));
}

class _DrumPageState extends State<DrumPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('bip');
                    },
                    child: Container(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('bongo');
                    },
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('oobah');
                    },
                    child: Container(
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('how');
                    },
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('clap1');
                    },
                    child: Container(
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('clap2');
                    },
                    child: Container(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('clap3');
                    },
                    child: Container(
                      color: Colors.purpleAccent,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      enableFeedback: false,
                    ),
                    onPressed: () {
                      playAudio('crash');
                    },
                    child: Container(
                      color: Colors.yellowAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
