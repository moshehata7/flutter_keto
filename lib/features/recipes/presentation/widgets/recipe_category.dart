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
          borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          height: 200,
          width: 200,
          child: Stack(
            children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: SizedBox(
                height: 170,
                width: 240,
                child: Image.asset(
                  fit: BoxFit.fill,
                  recipesCategory.image),
              ),
            ),
             Align(
              alignment: Alignment.bottomCenter,
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 16),
                 child: Text(recipesCategory.recipeName,style: TextStyle(
                    fontSize: 25
                  ),),
               ),
             )]),
        ),
      ),
    );
  }
}
