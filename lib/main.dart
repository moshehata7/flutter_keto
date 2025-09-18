import 'package:flutter/material.dart';
import 'package:keto_app/core/utils/app_router.dart';

void main() {
  runApp(KetoDietApp());
}
class KetoDietApp extends StatelessWidget {
  const KetoDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      
    );
  }
}
