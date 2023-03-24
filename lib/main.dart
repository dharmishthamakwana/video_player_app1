import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/home/provider/home_provider.dart';
import 'screen/home/view/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Videoprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Videoscreen(),
        },
      ),
    ),
  );
}
