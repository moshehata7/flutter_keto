import 'package:flutter/material.dart';
import 'package:keto_app/features/recipes/presentation/models/recipe_category.dart';
import 'package:keto_app/features/recipes/presentation/widgets/recipe_category.dart';

class RecipeViewBody extends StatefulWidget {
  const RecipeViewBody({super.key});

  @override
  State<RecipeViewBody> createState() => _RecipeViewBodyState();
}

class _RecipeViewBodyState extends State<RecipeViewBody> {
  final List<RecipesCategory> recipes = [
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
    RecipesCategory("images/ideal-protein-diet-VA-768x512.jpg", "recipeName"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCategory(recipesCategory: recipes[index]);
        },
      ),
    );
  }
}
