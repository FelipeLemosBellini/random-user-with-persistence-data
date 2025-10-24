import 'package:flutter/material.dart';
import 'package:random_user_data_persistence/app/di/injections.dart';
import 'package:random_user_data_persistence/app/router/routes.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      ),
    );
  }
}
