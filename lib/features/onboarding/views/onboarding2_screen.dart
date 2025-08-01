import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/router/app_router.dart';
import '../../../../core/utils/size_config.dart';

@RoutePage()
class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

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
                      'assets/images/third.png',
                      width: SizeConfig.getProportionalWidth(360),
                      height: SizeConfig.getProportionalHeight(670),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.getProportionalHeight(46),
                    left: 20,
                    right: 20,
                    child: Text(
                      'Get plan care guides',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 28,
                        height: 1,
                        letterSpacing: -1.0,
                        color: Color(0xFF13231B),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 320,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const PaywallRoute());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF28AF6E),
                    padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Continue",
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
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  bool isActive = index == 2;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: isActive ? 12 : 8,
                    height: isActive ? 12 : 8,
                    decoration: BoxDecoration(
                      color: isActive ? Colors.black : Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
