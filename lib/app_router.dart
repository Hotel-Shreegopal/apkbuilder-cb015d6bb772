import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/task_detail_screen.dart';
import 'screens/task_form_screen.dart';
import 'screens/settings_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => const HomeScreen(),
      '/home_screen': (context) => const HomeScreen(),
      '/task_detail_screen': (context) => const TaskDetailScreen(),
      '/task_form_screen': (context) => const TaskFormScreen(),
      '/settings_screen': (context) => const SettingsScreen(),
    };
  }
}
