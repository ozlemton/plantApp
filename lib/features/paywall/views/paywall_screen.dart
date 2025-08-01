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
      backgroundColor: Color(0xFF101e17),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image(
              image: AssetImage('assets/images/fourth.png'),
              width: SizeConfig.screenWidth,
              height: 465,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 38,
            left: 316,
            child: GestureDetector(
              onTap: (){
                context.pushRoute(const HomeRoute());

              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x00000066),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/images/close.png'),
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            child: Image(
              image: AssetImage('assets/images/content.png'),
              width: SizeConfig.screenWidth,
              // height: 505,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
