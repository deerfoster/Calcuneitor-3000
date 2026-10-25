import 'package:calcuneitor_3000/screens/ppl_info.dart';
import 'package:flutter/material.dart';
import 'package:calcuneitor_3000/screens/HomeScreen.dart';

final Map<String, WidgetBuilder> calcuneitorRoutes = {
  '/home': (BuildContext context) => const HomeScreen(),
  '/info': (BuildContext context) => const DeveloperInfo(),
};