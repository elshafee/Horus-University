import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horus_university/ui_screens/banner.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splashscreen';

  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 5000,
      navigateRoute: const Baner(),
      imageSize: 300,
      imageSrc: "assets/images/logos/slogo.png",
      text: "Horus University",
      textType: TextType.TyperAnimatedText,
      textStyle: GoogleFonts.courgette(
        fontSize: 40.0,
        color: Colors.indigo[800],
      ),
    );
  }
}
