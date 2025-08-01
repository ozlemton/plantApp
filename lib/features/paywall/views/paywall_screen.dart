import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planapp/app/router/app_router.dart';
import '../../../../core/utils/size_config.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planapp/app/router/app_router.dart';
import '../../../../core/utils/size_config.dart';

@RoutePage()
class PaywallScreen extends StatelessWidget {
  const PaywallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101e17),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/fourth.png',
              width: SizeConfig.screenWidth,
              height: SizeConfig.getProportionalHeight(465),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: SizeConfig.getProportionalHeight(38),
            left: SizeConfig.getProportionalWidth(316),
            child: GestureDetector(
              onTap: () {
                context.pushRoute(const HomeRoute());
              },
              child: Container(
                width: SizeConfig.getProportionalWidth(32),
                height: SizeConfig.getProportionalWidth(32),
                decoration: const BoxDecoration(
                  color: Color(0x00000066),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/close.png',
                    width: SizeConfig.getProportionalWidth(24),
                    height: SizeConfig.getProportionalHeight(24),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.getProportionalHeight(5),
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/content.png',
              width: SizeConfig.screenWidth,
              height: SizeConfig.getProportionalHeight(505),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
