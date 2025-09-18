import 'package:flutter/material.dart';
import 'package:keto_app/features/recipes/presentation/widgets/recipe_view_body.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("وصفات كيتو"),
      ),
      body: RecipeViewBody(),
    );
  }
}