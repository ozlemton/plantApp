import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../app/router/app_router.dart';
import '../../../../core/utils/size_config.dart';

@RoutePage()
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

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
                      'assets/images/first.png',
                      width: SizeConfig.getProportionalWidth(360),
                      height: SizeConfig.getProportionalHeight(670),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.getProportionalHeight(
                      SizeConfig.isIOS ? 60 : 40,
                    ),
                    left: SizeConfig.getProportionalWidth(20),
                    right: SizeConfig.getProportionalWidth(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to PlantApp',
                          style: theme.textTheme.headlineLarge?.copyWith(
                            fontSize: SizeConfig.getProportionalHeight(28),
                          ),
                        ),
                        // SizedBox(height: SizeConfig.getProportionalHeight(12)),
                        SizedBox(
                          width: SizeConfig.getProportionalWidth(300),
                          child: Text(
                            'Identify more than 3000+ plants and 88% accuracy.',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSecondary.withOpacity(0.7),
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
                      "Get Started",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: colorScheme.onPrimary,
                        fontSize: SizeConfig.getProportionalWidth(16),
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
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: SizeConfig.getProportionalWidth(11),
                    height: 1.36,
                    color: colorScheme.onSecondary.withOpacity(0.5),
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
