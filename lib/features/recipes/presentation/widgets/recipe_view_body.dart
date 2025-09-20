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
    RecipesCategory(1,"assets/images/basolia.jpg", "فاصوليا باللحم"),
    RecipesCategory(2,"assets/images/pizza.jpg", "بيتزا للفطار"),
    RecipesCategory(3,"assets/images/fahita.jpg", "فاهيتا لحم"),
    RecipesCategory(4,"assets/images/15-Featured-healthy.jpg", "كوكيز كيتو"),
    RecipesCategory(5,"assets/images/khobzkresh.jpg", "خبز قريش"),
    RecipesCategory(6,"assets/images/khobz.jpg", "خبز سمسم"),
    RecipesCategory(7,"assets/images/meskaa.jpg", "مسقعة كيتو"),
    RecipesCategory(8,"assets/images/photo.jpg", "بشاميل كيتو"),
    RecipesCategory(9,"assets/images/crepe.jpg", "كريب حلو"),
    RecipesCategory(10,"assets/images/mahshi.jpg", "محشي كيتو"),
    RecipesCategory(11,"assets/images/kofta.jpg", "كفتة لحم"),
    RecipesCategory(12,"assets/images/Cake_1.webp", "كيك شيكولاتة"),
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
