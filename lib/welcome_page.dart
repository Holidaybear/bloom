import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          (MediaQuery.of(context).platformBrightness == Brightness.light)
              ? Brightness.dark
              : Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            (MediaQuery.of(context).platformBrightness == Brightness.light)
                ? 'assets/light_welcome_bg.svg'
                : 'assets/dark_welcome_bg.svg',
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
                  (MediaQuery.of(context).platformBrightness ==
                          Brightness.light)
                      ? 'assets/light_welcome_illos.svg'
                      : 'assets/dark_welcome_illos.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  (MediaQuery.of(context).platformBrightness ==
                          Brightness.light)
                      ? 'assets/light_logo.svg'
                      : 'assets/dark_logo.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 32,
                child: Text(
                  "Beautiful home garden solutions",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                    onPrimary: Theme.of(context).colorScheme.onSecondary,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                  ),
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 48,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                  ),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.light)
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
