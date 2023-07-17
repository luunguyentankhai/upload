// Base libraries import
import 'package:flutter/material.dart';

// App screens import
import 'package:settings_screen/main_model/background_manager.dart';
import 'package:settings_screen/main_model/main_screen.dart';

// External libraries import
import 'package:provider/provider.dart';
import 'package:settings_screen/todo_model/views_models/app_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // Managers initialization
  final BackgroundManager bgManager = const BackgroundManager();

// Screens initialization
  late final MainScreen mainScreen = MainScreen(managerContainer: [bgManager]);
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDStudy',
      home: mainScreen,
    );
  }
}
