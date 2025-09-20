import 'package:flutter/material.dart';
import 'package:keto_app/features/recipes/presentation/models/recipe_category.dart';
import 'package:keto_app/features/recipes/presentation/views/recipe_details_view.dart';

class RecipeCategory extends StatelessWidget {
  const RecipeCategory({super.key, required this.recipesCategory});

  final RecipesCategory recipesCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RecipeDetailsView();
            },
          ),
        );
      },
      child: Card(
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  fit: BoxFit.cover,
                  recipesCategory.image,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  recipesCategory.recipeName,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
