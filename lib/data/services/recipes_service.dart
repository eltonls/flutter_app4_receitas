import 'package:app4_receitas/di/service_locator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RecipesService {
  final SupabaseClient _supabase = getIt<SupabaseClient>();

  Future<List<Map<String, dynamic>>> getRecipes() async {
    print("Fetching recipes from Supabase...");
    return await _supabase
        .from('recipes')
        .select();
  }
}