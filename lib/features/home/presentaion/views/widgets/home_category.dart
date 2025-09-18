import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
    this.hight,
    this.width,
    required this.image,
    required this.onTap, required this.categoryName,
  });
  final double? hight, width;
  final String image;
  final Function() onTap;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: hight,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
                borderRadius: BorderRadius.circular(12),
              ),
              
            ),
          ),
          SizedBox(height: 15,),
          Text(categoryName,style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}
