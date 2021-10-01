import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 184,
              child: Text(
                'Log in with email',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              height: 56,
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  labelText: 'Email address',
                  labelStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              height: 56,
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  labelText: 'Password (8+ characters)',
                  labelStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                maxLines: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              alignment: Alignment.bottomCenter,
              height: 40,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By clicking below, you agree to our ',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' and consent to our ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
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
                  'Log in',
                  style: Theme.of(context).textTheme.button?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
