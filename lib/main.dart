import 'package:flutter/material.dart';
import 'package:park_in_refactor/app/routes/route.dart';
import 'package:park_in_refactor/app/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "ParkIn",
      debugShowCheckedModeBanner: false,
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
      theme: themeData(),
    );
  }
}
