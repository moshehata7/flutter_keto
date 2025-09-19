import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:keto_app/features/calories/data/cubit/calories_cubit.dart';
import 'package:keto_app/features/calories/presentation/views/calories_view.dart';
import 'package:keto_app/features/home/presentaion/views/widgets/home_view_body.dart';
import 'package:keto_app/features/macros/data/cubit/macros_cubit.dart';
import 'package:keto_app/features/macros/presentation/views/macros_view.dart';
import 'package:keto_app/features/recipes/presentation/views/recipes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isPressed = false;
  final List<Widget> pages = [
    HomeViewBody(),
    RecipesView(),
    BlocProvider(create: (context) => CaloriesCubit(), child: CaloriesView()),
    BlocProvider(create: (context) => MacrosCubit(), child: MacrosView()),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.houseChimney),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.kitchenSet),
            label: "الوصفات",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calculator),
            label: "احسب سعراتك",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.book),
            label: "اعرف نسبك ",
          ),
        ],
      ),
    );
  }
}
