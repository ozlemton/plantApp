import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../app/router/app_router.dart';
import '../../../../core/utils/size_config.dart';

@RoutePage()
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/first.png',
                      width: SizeConfig.getProportionalWidth(360),
                      height: SizeConfig.getProportionalHeight(670),
                      fit: BoxFit.contain,
                    ),
                  ),

                  Positioned(
                    top: SizeConfig.getProportionalHeight(40),
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome to PlantApp',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 28,
                            height: 1.0,
                            letterSpacing: 0.0,
                            color: Color(0xFF13231B),
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Identify more than 3000+ plants and 88% accuracy.',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.375,
                              letterSpacing: 0.0,
                              color: Color(0xB213231B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: SizedBox(
                  width: 320,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const Onboarding1Route());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF28AF6E),
                      padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.5,
                        letterSpacing: 0.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 232,
                height: 30,
                alignment: Alignment.center,
                child: const Text(
                  'By tapping next, you are agreeing to PlantID\nTerms of Use & Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    height: 1.36,
                    letterSpacing: 0.0,
                    color: Color(0xB2597165),
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
