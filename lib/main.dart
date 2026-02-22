import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopy_shop/providers/cart_provider.dart';
import 'package:shopy_shop/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

/// ✅ Changed to StatefulWidget to control theme
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// 🌙 Dark mode state
  bool isDark = false;

  /// Toggle function
  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider())
      ],
      child: MaterialApp(
        title: 'Shopping App',

        /// 🌙 Theme switching
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

        /// ☀️ Light Theme (YOUR ORIGINAL THEME)
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 206, 1, 1),
            primary: const Color.fromRGBO(254, 206, 1, 1),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          useMaterial3: true,
        ),

        /// 🌙 Dark Theme
        darkTheme: ThemeData.dark(useMaterial3: true),

        /// ✅ Passing toggle function to HomePage
        home: HomePage(toggleTheme: toggleTheme),
      ),
    );
  }
}