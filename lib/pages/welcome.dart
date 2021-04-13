import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grupolatam/helpers/styles.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controllerLogo, controllerTexto, controllerButton;
  Animation<double> opacity;

  @override
  void initState() {
    controllerLogo =
        new AnimationController(vsync: this, duration: Duration(seconds: 2));
    opacity = new Tween(begin: 0.0, end: 1.0).animate(controllerLogo);
    controllerLogo.forward();

    

    super.initState();
  }

  @override
  void dispose() {
    controllerLogo.dispose();
    controllerTexto.dispose();
    controllerButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(35, 25, 166, 1),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Bienvenido",
              style: latamSansThinItalic(30.0, Colors.white),
            ),
            FadeTransition(
              opacity: opacity,
              child: SvgPicture.asset(
                "assets/logo/logo-grande-background-dart.svg",
                semanticsLabel: 'Logo Latam',
                height: 100,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CupertinoButton(
                color: Color(0xFFED1650),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  child: Text(
                    "Comenzar",
                    style: latamSansRegular(24, Colors.white),
                  ),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
