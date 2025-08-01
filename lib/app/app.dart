import 'package:flutter/material.dart';
import '../core/utils/size_config.dart';
import '../core/utils/app_theme.dart';
import 'router/app_router.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    final _appRouter = AppRouter();
    SizeConfig.init(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PlantApp',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
    );
  }
}
