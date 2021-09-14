import 'package:flutter/material.dart';
import 'package:proj3/app/modules/adivice_app/views/pages/advice_app_page.dart';


 abstract class AppRoutes {
  static final adviceAppPage = "/adviceAppPage";
  static final Map<String, Widget Function(BuildContext)> routes = {
    adviceAppPage : (context) => AdviceAppPage(),
  };
}