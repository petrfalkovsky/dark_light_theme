import 'package:flutter/material.dart';
import 'package:it_solutions/ui/theme.dart';
import 'package:provider/provider.dart';

import 'ui/loging_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
        create: (context) => ThemeChanger(ThemeData.dark()),
        child: const MaterialAppWithTheme());
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      home: const LoginDemo(),
      theme: theme.getTheme(),
    );
  }
}
