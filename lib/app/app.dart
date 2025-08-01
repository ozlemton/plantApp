import 'package:flutter/material.dart';
import '../core/utils/size_config.dart';
import 'router/app_router.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    SizeConfig.init(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PlantApp',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routerConfig: _appRouter.config(),
    );
  }
}
