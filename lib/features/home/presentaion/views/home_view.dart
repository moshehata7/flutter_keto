import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
final List<Widget> pages = [
    HomeView(),
    RecipesView(),
   CaloriesCalculatorView(),
   MacrosDetailsView()
    ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
      index: currentIndex,
      children: pages 
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            
    icon: FaIcon(FontAwesomeIcons.houseChimney,color: Colors.white),
    label: "الرئيسية",
  ),
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.kitchenSet,color: Colors.white),
    label: "الوصفات",
  ),
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.calculator,color: Colors.white),
    label: "احسب سعراتك"
  ),
  BottomNavigationBarItem(
    icon: FaIcon(FontAwesomeIcons.book,color: Colors.white),
    label: "اعرف نسبك ",
    
    
  ),
        ],
      ),
    );
  }
}