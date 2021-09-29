import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1F1),
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/light_welcome_bg.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin:
                    const EdgeInsets.only(left: 88.0, top: 72.0, bottom: 48.0),
                child: SvgPicture.asset(
                  'assets/light_welcome_illos.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/light_logo.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 32,
                child: const Text("Beautiful home garden solutions"),
              ),
              const SizedBox(height: 40),
              Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF3F2C2C),
                        onPrimary: Colors.white,
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: const Text("Create Account"),
                  )),
              const SizedBox(height: 8),
              Container(
                  height: 48,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: const Text("Log in", style: TextStyle(color: Color(0xFF3F2C2C)),),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
