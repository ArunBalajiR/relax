import 'package:flutter/material.dart';
import 'package:relax/constants.dart';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundCard extends StatefulWidget {
  SoundCard({
    this.fixedPlayer,
    this.audioCache,
    this.assetName,
  });

  AudioPlayer fixedPlayer;
  final AudioCache audioCache;
  final String assetName;

  @override
  _SoundCardState createState() => _SoundCardState();
}

class _SoundCardState extends State<SoundCard>
    with AutomaticKeepAliveClientMixin {
  double volumeValue = 70.0;
  bool _sliderVisible = false;
  bool selectedStatus = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GestureDetector(
      onTap: () async {
        setState(() {
          _sliderVisible = !_sliderVisible;
          selectedStatus = !selectedStatus;
          if (selectedStatus == true) {
            widget.fixedPlayer.state == AudioPlayerState.PLAYING
                ? pauseLocal()
                : playLocal('${widget.assetName}');
          } else {
            pauseLocal();
          }
        });
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/${widget.assetName}.png',
              height: 60,
              width: 60,
            ),
            SizedBox(height: 10.0),
            Visibility(
              visible: _sliderVisible,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2.0,
                  activeTrackColor: kDarkBlue,
                  inactiveTrackColor: Colors.white,
                  thumbColor: kDarkBlue,
                  overlayColor: Color(0x29001E3D),
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 5.0,
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 10.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Slider(
                    value: volumeValue,
                    min: 0,
                    max: 100,
                    onChanged: (double value) {
                      setState(() {
                        volumeValue = value;
                      });
                      widget.fixedPlayer.setVolume(value / 100);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(-1.0, -4.0),
              end: Alignment(1.0, 4.0),
              colors: [
                kBlueShade1,
                kBlueShade2,
              ]),
          borderRadius: BorderRadius.all(Radius.circular(35)),
          boxShadow:
              selectedStatus ? kActiveCardDecoration : kInactiveCardDecoration,
        ),
      ),
    );
  }

  Future playLocal(String assetName) async {
    if (widget.fixedPlayer.state == AudioPlayerState.PAUSED) {
      widget.fixedPlayer.resume();
    } else {
      widget.fixedPlayer = await widget.audioCache
          .loop('audio/$assetName.m4a', volume: 0.7, stayAwake: true);
    }
  }

  Future pauseLocal() async {
    widget.fixedPlayer.pause();
  }

  @override
  bool get wantKeepAlive => true;
}
