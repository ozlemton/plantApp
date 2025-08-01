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
                    left: SizeConfig.getProportionalWidth(20),
                    right: SizeConfig.getProportionalWidth(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to PlantApp',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.getProportionalWidth(28),
                            height: 1.0,
                            color: const Color(0xFF13231B),
                          ),
                        ),
                        SizedBox(height: SizeConfig.getProportionalHeight(12)),
                        SizedBox(
                          width: SizeConfig.getProportionalWidth(300),
                          child: Text(
                            'Identify more than 3000+ plants and 88% accuracy.',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: SizeConfig.getProportionalWidth(16),
                              height: 1.375,
                              color: const Color(0xB213231B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: SizeConfig.getProportionalHeight(18),
                ),
                child: SizedBox(
                  width: SizeConfig.getProportionalWidth(320),
                  height: SizeConfig.getProportionalHeight(56),
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushRoute(const Onboarding1Route());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF28AF6E),
                      padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.getProportionalWidth(16),
                        vertical: SizeConfig.getProportionalHeight(18),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.getProportionalWidth(12),
                        ),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.getProportionalWidth(16),
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width: SizeConfig.getProportionalWidth(232),
                height: SizeConfig.getProportionalHeight(30),
                alignment: Alignment.center,
                child: Text(
                  'By tapping next, you are agreeing to PlantID\nTerms of Use & Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.getProportionalWidth(11),
                    height: 1.36,
                    color: const Color(0xB2597165),
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
