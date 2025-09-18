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
    RecipesCategory(1,"images/ideal-protein-diet-VA-768x512.jpg", "فاصوليا باللحم"),
    RecipesCategory(2,"images/ideal-protein-diet-VA-768x512.jpg", "بيتزا للفطار"),
    RecipesCategory(3,"images/ideal-protein-diet-VA-768x512.jpg", "فاهيتا لحم"),
    RecipesCategory(4,"images/ideal-protein-diet-VA-768x512.jpg", "كوكيز كيتو"),
    RecipesCategory(5,"images/ideal-protein-diet-VA-768x512.jpg", "خبز قريش"),
    RecipesCategory(6,"images/ideal-protein-diet-VA-768x512.jpg", "خبز سمسم"),
    RecipesCategory(7,"images/ideal-protein-diet-VA-768x512.jpg", "مسقعة كيتو"),
    RecipesCategory(8,"images/ideal-protein-diet-VA-768x512.jpg", "بشاميل كيتو"),
    RecipesCategory(9,"images/ideal-protein-diet-VA-768x512.jpg", "كريب حلو"),
    RecipesCategory(10,"images/ideal-protein-diet-VA-768x512.jpg", "محشي كيتو"),
    RecipesCategory(11,"images/ideal-protein-diet-VA-768x512.jpg", "كفتة لحم"),
    RecipesCategory(12,"images/ideal-protein-diet-VA-768x512.jpg", "كيك شيكولاتة"),
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
