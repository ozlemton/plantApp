import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/router/app_router.dart';
import '../../../../core/utils/size_config.dart';

@RoutePage()
class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
                    top: SizeConfig.getProportionalHeight(
                      SizeConfig.isIOS ? 60 : 46,
                    ),
                    left: SizeConfig.getProportionalWidth(20),
                    right: SizeConfig.getProportionalWidth(20),
                    child: Text(
                      'Get plan care guides',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.getProportionalWidth(28),
                        height: 1,
                        letterSpacing: -1.0,
                        color: colorScheme.onBackground,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.getProportionalWidth(320),
                height: SizeConfig.getProportionalHeight(56),
                child: ElevatedButton(
                  onPressed: () {
                    context.pushRoute(const PaywallRoute());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.primary,
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
                    "Continue",
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.getProportionalWidth(16),
                      color: colorScheme.onPrimary,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.getProportionalHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  bool isActive = index == 2;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.getProportionalWidth(6),
                    ),
                    width: SizeConfig.getProportionalWidth(isActive ? 12 : 8),
                    height: SizeConfig.getProportionalWidth(isActive ? 12 : 8),
                    decoration: BoxDecoration(
                      color: isActive
                          ? colorScheme.onBackground
                          : colorScheme.onBackground.withOpacity(0.3),
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
