import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:werd/constents.dart';
import 'package:werd/cubits/audio_cubit/audio_cubit.dart';

class CustomBottombarSound extends StatefulWidget {
  const CustomBottombarSound(
      {super.key, required this.mp3File, required this.ayatIndex});
  final int ayatIndex;
  final String? mp3File;

  @override
  State<CustomBottombarSound> createState() => _CustomBottombarSoundState();
}

class _CustomBottombarSoundState extends State<CustomBottombarSound> {
  bool isSwitched = false;
  void initState() {
    super.initState();
    context.read<AudioCubit>().mp3File = widget.mp3File;
    // Listening for player state changes
    context
        .read<AudioCubit>()
        .audioPlayer
        .onPlayerStateChanged
        .listen((PlayerState state) {
      if (mounted) {
        setState(() {
          context.read<AudioCubit>().playing = state == PlayerState.playing;
        });
      }
    });

    // Listen to duration changes
    context
        .read<AudioCubit>()
        .audioPlayer
        .onDurationChanged
        .listen((Duration d) {
      if (mounted) {
        setState(() => context.read<AudioCubit>().duration = d);
      }
    });

    // Listen to position changes
    context
        .read<AudioCubit>()
        .audioPlayer
        .onPositionChanged
        .listen((Duration p) {
      if (mounted) {
        setState(() => context.read<AudioCubit>().position = p);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AudioCubit>(context).isPlaying();
    return BottomAppBar(
      height: 140,
      shape: CircularNotchedRectangle(),
      color: kPrimaryColor,
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Slider(
                  min: 0,
                  max: context.read<AudioCubit>().duration.inSeconds.toDouble(),
                  value: context
                      .read<AudioCubit>()
                      .position
                      .inSeconds
                      .toDouble()
                      .clamp(
                          0.0,
                          context
                              .read<AudioCubit>()
                              .duration
                              .inSeconds
                              .toDouble()), // ضبط القيمة داخل الحدود
                  onChanged: (value) {
                    context
                        .read<AudioCubit>()
                        .audioPlayer
                        .seek(Duration(seconds: value.toInt()));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        AudioCubit.formatTime(
                            context.read<AudioCubit>().position),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        AudioCubit.formatTime(
                            context.read<AudioCubit>().duration),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                            context.read<AudioCubit>().playing
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: kPrimaryColor),
                        onPressed: () async {
                          if (context.read<AudioCubit>().playing) {
                            await context.read<AudioCubit>().pauseAudio();
                          } else {
                            if (context.read<AudioCubit>().mp3File != null) {
                              await context.read<AudioCubit>().playAudio(
                                  context.read<AudioCubit>().mp3File!);
                            } else {
                              if (widget.ayatIndex == 1 ||
                                  widget.ayatIndex == 2 ||
                                  widget.ayatIndex == 3) {
                                await context
                                    .read<AudioCubit>()
                                    .playAllAyat(baqarhPartOneList);
                                await context
                                    .read<AudioCubit>()
                                    .playAllAyat(baqarhPartTwoList);
                                await context
                                    .read<AudioCubit>()
                                    .playAllAyat(baqarhPartThreeList);
                              } else {
                                await context
                                    .read<AudioCubit>()
                                    .playAllAyat(alEmranPartThreeList);
                                await context
                                    .read<AudioCubit>()
                                    .playAllAyat(alEmranPartFourList);
                              }
                            }
                          }
                        }),
                    IconButton(
                      icon: Icon(Icons.stop, color: kPrimaryColor),
                      onPressed: context.read<AudioCubit>().stopAudio,
                    ),
                    context.read<AudioCubit>().mp3File != null
                        ? Switch(
                            onChanged: (value) {
                              isSwitched = value;
                              setState(() {
                                isSwitched = value;
                              });
                              if (value) {
                                context.read<AudioCubit>().playAudioForEver(
                                    context.read<AudioCubit>().mp3File!);
                              }else{
                                  context.read<AudioCubit>().stopAudio();
                              }
                              if(!value){
                                
                              }
                            },
                            value: isSwitched,
                          )
                        : SizedBox(),
                    context.read<AudioCubit>().mp3File != null
                        ? Text(
                            'اعادة التشغيل',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Amiri'),
                          )
                        : SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
