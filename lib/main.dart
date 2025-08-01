import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/app.dart';
import 'features/home/bloc/plant_category/plant_category_cubit.dart';
import 'features/home/data/repository/plant_category_repository.dart';
import 'features/onboarding/bloc/onboarding_cubit.dart';

Future<void> main() async {
  final dio = Dio();
  final repository = PlantCategoryRepository(dio);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PlantCategoryCubit(repository)..fetchCategories(),
        ),
        BlocProvider(create: (_) => OnboardingCubit()),
      ],
      child: const PlantApp(),
    ),
  );
}
