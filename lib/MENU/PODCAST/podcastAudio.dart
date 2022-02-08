import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:just_audio/just_audio.dart';
import 'package:picksfromthepaddock/Controller/podcastController.dart';
import 'package:picksfromthepaddock/Model/podcastModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:picksfromthepaddock/url.dart';

class podcastAudio extends StatefulWidget {
  var index;

  podcastAudio(this.index);

  @override
  _podcastAudioState createState() => _podcastAudioState();
}

class _podcastAudioState extends State<podcastAudio> {
  Future<Podcast> futurePodcast;
  final PodcastController podcastController = PodcastController();
  final image = url.imageUrl;
  AudioPlayer _audioPlayer;
  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState(
      current: Duration.zero,
      buffered: Duration.zero,
      total: Duration.zero,
    ),
  );
  final buttonNotifier = ValueNotifier<ButtonState>(ButtonState.paused);
  final speedNotifier = ValueNotifier<SpeedState>(SpeedState.speed2);
  Stream<FileResponse> fileStream;

  @override
  void initState() {
    super.initState();
    futurePodcast = podcastController.getPodcast();
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff254AAC),
      body: FutureBuilder<Podcast>(
        future: podcastController.getPodcast(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _audioPlayer = AudioPlayer();
             _audioPlayer.setUrl(image + snapshot.data.data[widget.index].audio);
            _audioPlayer.playerStateStream.listen((playerState) {
              final isPlaying = playerState.playing;
              final processingState = playerState.processingState;
              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                buttonNotifier.value = ButtonState.loading;
              } else if (!isPlaying) {
                buttonNotifier.value = ButtonState.paused;
              } else if (processingState != ProcessingState.completed) {
                buttonNotifier.value = ButtonState.playing;
              } else {
                _audioPlayer.seek(Duration.zero);
                _audioPlayer.pause();
              }
            });

            _audioPlayer.speedStream.listen((event) {

              if(speedNotifier.value == 0.5){
                speedNotifier.value = SpeedState.speed1;
              }else if(speedNotifier.value == 1.0){
                speedNotifier.value = SpeedState.speed2;
              }else if(speedNotifier.value == 1.25){
                speedNotifier.value = SpeedState.speed3;
              }else if(speedNotifier.value==1.50){
                speedNotifier.value = SpeedState.speed4;
              }else if(speedNotifier.value == 2){
                speedNotifier.value = SpeedState.speed5;
              }
            });

            _audioPlayer.positionStream.listen((position) {
              final oldState = progressNotifier.value;
              progressNotifier.value = ProgressBarState(
                current: position,
                buffered: oldState.buffered,
                total: oldState.total,
              );
            });

            _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
              final oldState = progressNotifier.value;
              progressNotifier.value = ProgressBarState(
                current: oldState.current,
                buffered: bufferedPosition,
                total: oldState.total,
              );
            });

            _audioPlayer.durationStream.listen((totalDuration) {
              final oldState = progressNotifier.value;
              progressNotifier.value = ProgressBarState(
                current: oldState.current,
                buffered: oldState.buffered,
                total: totalDuration ?? Duration.zero,
              );
            });
            return Container(
              width: query.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "Assets/Icons/backBlack.png",
                          height: large,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Image.asset(
                          "Assets/Icons/img3.png",
                          height: 95.sp,
                          fit: BoxFit.fill,
                        ),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          "Assets/Icons/backBlack.png",
                          color: Colors.transparent,
                          height: large,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                  Text(
                    "Turf Talk Prodcast",
                    maxLines: 1,
                    style: TextStyle(
                        color: primaryWhite,
                        fontSize: small,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 50.w,
                    child: Text(
                      snapshot.data.data[widget.index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primaryWhite,
                          fontSize: 12.sp,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 20.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          ValueListenableBuilder<ProgressBarState>(
                            valueListenable: progressNotifier,
                            builder: (_, value, __) {
                              return ProgressBar(
                                progress: value.current,
                                buffered: value.buffered,
                                total: value.total,
                                onSeek: _audioPlayer.seek,
                                timeLabelTextStyle: TextStyle(color: primaryWhite),
                                progressBarColor: primaryWhite,
                                barHeight: 0.4.h,
                                thumbColor: primaryWhite,
                                thumbRadius: 5.0,
                                thumbGlowRadius: 10.0,
                                bufferedBarColor: Color(0xff2a53c1),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                /*InkWell(onTap: () async {
                                  await _audioPlayer.setSpeed(2.0);
                                },
                                   child: Icon(Icons.one_x_mobiledata,size: 20.sp,
                                      color: primaryWhite,)
                                ),*/
                                ValueListenableBuilder<SpeedState>(
                                  valueListenable: speedNotifier,
                                  builder: (_, value, __) {
                                    switch (value) {
                                      case SpeedState.speed1:
                                        return IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            icon: const Icon(Icons.one_k,color: primaryWhite),
                                            iconSize: 20.sp,
                                            onPressed: (){_audioPlayer.setSpeed(0.5);}
                                        );
                                      case SpeedState.speed2:
                                        return IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            icon: const Icon(Icons.two_k,color: primaryWhite),
                                            iconSize: 20.sp,
                                            onPressed: (){_audioPlayer.setSpeed(1);}
                                        );
                                      case SpeedState.speed3:
                                        return IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            icon: const Icon(Icons.three_k,color: primaryWhite),
                                            iconSize: 20.sp,
                                            onPressed: (){_audioPlayer.setSpeed(1.25);}
                                        );
                                      case SpeedState.speed4:
                                        return IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            icon: const Icon(Icons.four_k,color: primaryWhite),
                                            iconSize: 20.sp,
                                            onPressed: (){_audioPlayer.setSpeed(1.5);}
                                        );
                                      case SpeedState.speed5:
                                        return IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            icon: const Icon(Icons.five_k,color: primaryWhite),
                                            iconSize: 20.sp,
                                            onPressed: (){_audioPlayer.setSpeed(2);}
                                        );
                                    }
                                    return null;
                                  },
                                ),
                                InkWell(
                                    onTap: () async {await _audioPlayer.seek(Duration(seconds: _audioPlayer.position.inSeconds - 10));},
                                    child: Icon(Icons.replay_10_rounded,size: 20.sp,
                                        color: primaryWhite)),
                                ValueListenableBuilder<ButtonState>(
                                  valueListenable: buttonNotifier,
                                  builder: (_, value, __) {
                                    switch (value) {
                                      case ButtonState.loading:
                                        return Container(
                                          margin: const EdgeInsets.all(8.0),
                                          width: 35.sp,
                                          height: 35.sp,
                                          child: progressBar(),
                                        );
                                      case ButtonState.paused:
                                        return IconButton(
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          icon: const Icon(Icons.play_circle_outline_rounded,color: primaryWhite),
                                          iconSize: 35.sp,
                                          onPressed: _audioPlayer.play
                                        );
                                      case ButtonState.playing:
                                        return IconButton(
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          icon: const Icon(Icons.pause_circle_outline,color: primaryWhite),
                                          iconSize: 35.sp,
                                          onPressed: _audioPlayer.pause
                                        );
                                    }
                                    return null;
                                  },
                                ),
                                InkWell(
                                    onTap:() async {await _audioPlayer.seek(Duration(seconds: _audioPlayer.position.inSeconds + 10));},
                                    child: Icon(Icons.forward_10_rounded,size: 20.sp,
                                        color: primaryWhite)),
                                InkWell(
                                  onTap: (){
                                    fileStream = DefaultCacheManager().getFileStream(image + snapshot.data.data[widget.index].audio, withProgress: true);

                                  },
                                    child: Icon(Icons.download,size: 20.sp,color: primaryWhite)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xff2a53c1)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          snapshot.data.data[widget.index].description,
                          style: TextStyle(
                              color: primaryWhite,
                              fontSize: small,
                              fontFamily: "GlacialIndifference",
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            Text("No Data",
                style: TextStyle(
                    color: primaryBlack,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w700));
          }
          return Center(child: progressBar());
        },
      ),
    );
  }
}

class ProgressBarState {
  ProgressBarState({
    this.current,
    this.buffered,
    this.total,
  });

  final Duration current;
  final Duration buffered;
  final Duration total;
}

enum ButtonState { paused, playing, loading }
enum SpeedState { speed1, speed2, speed3, speed4, speed5}