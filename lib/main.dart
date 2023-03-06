import 'package:ecommerce/config/app_router.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomePage.routeName,
      home: HomePage(),
    );
  }
}
