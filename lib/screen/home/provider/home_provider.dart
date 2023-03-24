import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class Videoprovider extends ChangeNotifier {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  void initVideo() {
    videoPlayerController = VideoPlayerController.asset("asset/video/lo.mp4");
    videoPlayerController!.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController!,
      autoPlay: false,
      looping: true,
      allowFullScreen: true,

    );
  }
}