import 'package:flutter/material.dart';
import 'package:relax/soundcard.dart';
import 'package:relax/constants.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with AutomaticKeepAliveClientMixin {
  static AudioPlayer fixedPlayer1 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer2 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer3 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer4 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer5 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer6 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer7 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer8 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer9 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer10 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer11 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer12 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer13 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer14 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer15 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  static AudioPlayer fixedPlayer16 = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);

  AudioCache audioCache1 = AudioCache(fixedPlayer: fixedPlayer1);
  AudioCache audioCache2 = AudioCache(fixedPlayer: fixedPlayer2);
  AudioCache audioCache3 = AudioCache(fixedPlayer: fixedPlayer3);
  AudioCache audioCache4 = AudioCache(fixedPlayer: fixedPlayer4);
  AudioCache audioCache5 = AudioCache(fixedPlayer: fixedPlayer5);
  AudioCache audioCache6 = AudioCache(fixedPlayer: fixedPlayer6);
  AudioCache audioCache7 = AudioCache(fixedPlayer: fixedPlayer7);
  AudioCache audioCache8 = AudioCache(fixedPlayer: fixedPlayer8);
  AudioCache audioCache9 = AudioCache(fixedPlayer: fixedPlayer9);
  AudioCache audioCache10 = AudioCache(fixedPlayer: fixedPlayer10);
  AudioCache audioCache11 = AudioCache(fixedPlayer: fixedPlayer11);
  AudioCache audioCache12 = AudioCache(fixedPlayer: fixedPlayer12);
  AudioCache audioCache13 = AudioCache(fixedPlayer: fixedPlayer13);
  AudioCache audioCache14 = AudioCache(fixedPlayer: fixedPlayer14);
  AudioCache audioCache15 = AudioCache(fixedPlayer: fixedPlayer15);
  AudioCache audioCache16 = AudioCache(fixedPlayer: fixedPlayer16);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: kPrimaryBlue,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 40,
        mainAxisSpacing: 40,
        crossAxisCount: 2,
        children: <Widget>[
          SoundCard(
            assetName: 'rain',
            audioCache: audioCache1,
            fixedPlayer: fixedPlayer1,
          ),
          SoundCard(
            assetName: 'summernight',
            audioCache: audioCache2,
            fixedPlayer: fixedPlayer2,
          ),
          SoundCard(
            assetName: 'water',
            audioCache: audioCache3,
            fixedPlayer: fixedPlayer3,
          ),
          SoundCard(
            assetName: 'forest',
            audioCache: audioCache6,
            fixedPlayer: fixedPlayer6,
          ),
          SoundCard(
            assetName: 'waterstream',
            audioCache: audioCache9,
            fixedPlayer: fixedPlayer9,
          ),
          SoundCard(
            assetName: 'seaside',
            audioCache: audioCache10,
            fixedPlayer: fixedPlayer10,
          ),
          SoundCard(
            assetName: 'wind',
            audioCache: audioCache4,
            fixedPlayer: fixedPlayer4,
          ),
          SoundCard(
            assetName: 'thunderstorm',
            audioCache: audioCache5,
            fixedPlayer: fixedPlayer5,
          ),
          SoundCard(
            assetName: 'leaves',
            audioCache: audioCache7,
            fixedPlayer: fixedPlayer7,
          ),
          SoundCard(
            assetName: 'fireplace',
            audioCache: audioCache8,
            fixedPlayer: fixedPlayer8,
          ),
          SoundCard(
            assetName: 'brownnoise',
            audioCache: audioCache11,
            fixedPlayer: fixedPlayer11,
          ),
          SoundCard(
            assetName: 'coffeeshop',
            audioCache: audioCache12,
            fixedPlayer: fixedPlayer12,
          ),
          SoundCard(
            assetName: 'fan',
            audioCache: audioCache13,
            fixedPlayer: fixedPlayer13,
          ),
          SoundCard(
            assetName: 'pinknoise',
            audioCache: audioCache14,
            fixedPlayer: fixedPlayer14,
          ),
          SoundCard(
            assetName: 'whitenoise',
            audioCache: audioCache15,
            fixedPlayer: fixedPlayer15,
          ),
          SoundCard(
            assetName: 'train',
            audioCache: audioCache16,
            fixedPlayer: fixedPlayer16,
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
