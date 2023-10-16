import 'package:flutter/material.dart';
import 'package:usaha_kreatif_indonesia/app/routes.dart';
import 'package:usaha_kreatif_indonesia/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Usaha Kreatif Indonesia',
      initialRoute: LandingPage.route,
      routes: appRoutes,
    );
  }
}
