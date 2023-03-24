import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class Videoscreen extends StatefulWidget {
  const Videoscreen({Key? key}) : super(key: key);

  @override
  State<Videoscreen> createState() => _VideoscreenState();
}

class _VideoscreenState extends State<Videoscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Videoprovider>(context, listen: false).initVideo();
    super.initState();
  }

  Videoprovider? videoproviderTrue;
  Videoprovider? videoproviderFalse;

  @override
  Widget build(BuildContext context) {
    videoproviderFalse = Provider.of<Videoprovider>(context, listen: false);
    videoproviderTrue = Provider.of<Videoprovider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "VIDEO SCREEN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: 250,
          width: double.infinity,
          child: Chewie(
            controller: videoproviderFalse!.chewieController!,
          ),
        ),
      ),
    );
  }
}