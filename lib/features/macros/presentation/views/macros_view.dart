
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keto_app/features/calories/presentation/views/widgets/custom_button.dart';
import 'package:keto_app/features/calories/presentation/views/widgets/custom_text_field.dart';
import 'package:keto_app/features/macros/data/cubit/macros_cubit.dart';
import 'package:keto_app/features/macros/data/cubit/macros_state.dart';

class MacrosView extends StatefulWidget {
  const MacrosView({super.key});

  @override
  State<MacrosView> createState() => _MacrosViewState();
}

class _MacrosViewState extends State<MacrosView> {
  final TextEditingController caloriesController = TextEditingController();
  @override
  void dispose() {
    caloriesController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" اعرف نسبك ")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("في نظام الكيتو "),
            Text("نسبة البروتين من السعرات حوالي (20%) -"),
            Text("نسبة الكربوهيدرات من السعرات حوالي (10%) -"),
            Text(" نسبة الدهون من السعرات حوالي (70%) -"),
            Text(".. لمعرفة سعراتك و نسبك من البروتين والدهون و الكاربوهيدرات "),
            Text(" دخل سعرات ثباتك اللي حسبتها"),
            CustomTextField(
              controller: caloriesController,
              keyboardType: TextInputType.number,
              labelText: "سعراتك كام ",
              hintText: "أدخل سعرات ثباتك ",
            ),
            CustomButton(
              text: "احسب",
              onTap: () {
                final calories = double.tryParse(caloriesController.text);
        
                if (calories != null) {
                  BlocProvider.of<MacrosCubit>(
                    context,
                  ).calculateMacros(calories: calories);
                }
              },
            ),
            BlocBuilder<MacrosCubit, MacrosState>(
              builder: (context, state) {
                if (state is MacrosCalculated) {
                  return Column(
                    children: [
                      Text("البروتين:${state.protein.toStringAsFixed(1)} كالوري"),
                      Text(
                        " ملاحظة : جرام البروتين يعادل 4 سعرات (ليك ${(state.protein / 4).toStringAsFixed(1)}  جرام بروتين) ",
                      ),
                      Text("الكارب: ${state.carbs.toStringAsFixed(1)} كالوري"),
                      Text(
                        " ملاحظة : جرام الكربوهيدرات يعادل 4 سعرات (ليك ${(state.carbs / 4).toStringAsFixed(1)}  جرام كربوهيدرات) ",
                      ),
        
                      Text("الدهون: ${state.fat.toStringAsFixed(1)} كالوري"),
        
                      Text(
                        " ملاحظة : جرام الدهون يعادل 9 سعرات (ليك ${(state.fat / 9).toStringAsFixed(1)}  جرام دهون) ",
                      ),
                    ],
                  );
                }
        
                return SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
