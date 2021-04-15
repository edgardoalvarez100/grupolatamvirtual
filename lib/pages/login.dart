import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grupolatam/helpers/styles.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/welcome.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(25.0),
              width: double.infinity,
              // height: 680,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height * 0.35,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Image(
                              width: 100.0,
                              image: AssetImage(
                                  "assets/logo/Logo-fondo-blanco.png")),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Inicia sesión",
                                textAlign: TextAlign.left,
                                style: latamSansRegularItalic(
                                    25, Colors.blue.shade900),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                              // autofocus: true,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  labelStyle:
                                      latamSansRegular(18, Colors.black54),
                                  hintStyle: latamSansRegular(18, Colors.red),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 25))),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.send,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.vpn_key),
                                border: OutlineInputBorder(),
                                labelStyle:
                                    latamSansRegular(18, Colors.black54),
                                labelText: 'Contraseña',
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 50)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFED1650)),
                              ),
                              child: Text(
                                "Iniciar Sesión",
                                style: latamSansRegular(20, Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
