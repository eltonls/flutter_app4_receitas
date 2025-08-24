

import 'package:app4_receitas/data/repositories/recipes_repository.dart';
import 'package:app4_receitas/data/services/recipes_service.dart';
import 'package:app4_receitas/ui/recipes/recipes_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Register your services and repositories here
  // Example:
  // getIt.registerLazySingleton<RecipesService>(() => RecipesService());
  // getIt.registerLazySingleton<RecipesRepository>(() => RecipesRepository(getIt<RecipesService>()));

  // Ensure that SupabaseClient is registered before using it
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  getIt.registerLazySingleton<RecipesService>(() => RecipesService());
  getIt.registerLazySingleton<RecipesRepository>(() => RecipesRepository());
  getIt.registerLazySingleton<RecipesViewModel>(() => RecipesViewModel());
}