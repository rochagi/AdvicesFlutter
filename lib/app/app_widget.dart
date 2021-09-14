import 'package:flutter/material.dart';
import 'package:proj3/app/app_routes.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.adviceAppPage,
      routes: AppRoutes.routes,
    );
  }
}