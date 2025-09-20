import 'package:flutter/material.dart';
import 'package:keto_app/features/home/presentaion/views/category_view.dart';
import 'package:keto_app/features/home/presentaion/views/settings_view.dart';
import 'package:keto_app/features/home/presentaion/views/widgets/home_category.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الرئيسية "),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsView();
                    },
                  ),
                );
              },
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            HomeCategory(
              categoryName: "كل شئ عن الكيتو دايت",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CategoryView();
                    },
                  ),
                );
              },
              hight: 150,
              width: double.infinity,
              image: "assets/images/Keto.jpg",
            ),
            Row(
              children: [
                Expanded(
                  child: HomeCategory(
                    categoryName: "الصيام المتقطع",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CategoryView();
                          },
                        ),
                      );
                    },
                    hight: 120,
                    image:
                        "assets/images/IntermittentFasting_final-0b2134c18e154613b64a21a48b5b0114.jpg",
                  ),
                ),
                Expanded(
                  child: HomeCategory(
                    categoryName: "الأكل المسموح و الممنوع",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CategoryView();
                          },
                        ),
                      );
                    },
                    hight: 120,
                    image: "assets/images/ideal-protein-diet-VA-768x512.jpg",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: HomeCategory(
                    categoryName: " التمارين ",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CategoryView();
                          },
                        ),
                      );
                    },
                    hight: 120,
                    image: "assets/images/tamreen.jpg",
                  ),
                ),
                Expanded(
                  child: HomeCategory(
                    categoryName: "سؤال و جواب",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CategoryView();
                          },
                        ),
                      );
                    },
                    hight: 120,
                    image: "assets/images/books.jpg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
