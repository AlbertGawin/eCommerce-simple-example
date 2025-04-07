import 'package:ageno_flutter_assesment_skills/core/theme/app_theme.dart';
import 'package:ageno_flutter_assesment_skills/presentation/product/pages/products.dart';
import 'package:ageno_flutter_assesment_skills/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ageno Flutter Assessment Skills',
      theme: AppTheme.lightTheme,
      home: ProductsPage(),
    );
  }
}
