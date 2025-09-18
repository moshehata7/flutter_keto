import 'package:flutter/material.dart';
import 'package:keto_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(KetoDietApp());
}
class KetoDietApp extends StatelessWidget {
  const KetoDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashView(),
      
    );
  }
}
