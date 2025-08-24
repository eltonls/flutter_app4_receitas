


import 'package:app4_receitas/data/models/recipe.dart';
import 'package:app4_receitas/data/services/recipes_service.dart';

class RecipesRepository {
  final _service = RecipesService();

  Future<List<Recipe>> getRecipes() async {
    final rawData = await _service.getRecipes();
    print("Teste");
    print(rawData);
    return rawData.map((data) => Recipe.fromJson(data)).toList();
  }
}