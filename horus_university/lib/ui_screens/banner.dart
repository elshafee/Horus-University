import 'package:flutter/material.dart';
import 'package:horus_university/ui_screens/home_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Baner extends StatefulWidget {
  static const routeName = '/splashscreen';

  const Baner({Key? key}) : super(key: key);

  @override
  _BanerState createState() => _BanerState();
}

class _BanerState extends State<Baner> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 4000,
      navigateRoute: const Home(),
      imageSize: 800,
      imageSrc: "assets/images/banner/poup.jpg",
      speed: 120,
      backgroundColor: Colors.grey[200],
    );
  }
}
