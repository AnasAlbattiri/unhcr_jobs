import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:unhcr_jobs/utils/app_colors.dart';
import '../widgets/general/welcome_buttons_section.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: wColor,
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInLeft(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 120.0,
                      ),
                      SizedBox(
                        height: 240.0,
                        width: 240.0,
                        child: Image.network(
                          'https://www.spherestandards.org/wp-content/uploads/unhcr-logo-650x650.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                        'Let\'s you in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32.0,
                          height: 0.04,
                          fontFamily: 'Circular',
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                const WelcomeButtonsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
