import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/catalog_screen.dart';
import 'package:flutter_food_app/screens/order_detail_screen.dart';
import 'package:flutter_food_app/screens/welcome_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MaterialApp.router(
          title: 'Food Delivery App',
          routerConfig: router(),
        ),

    );
  }

  GoRouter router() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const WelcomeScreen(),
            routes: [
              GoRoute(
                path: 'catalog',
                builder: (context, state) => const CatalogScreen(),
              ),
              GoRoute(
                path: 'order',
                builder: (context, state) => OrderDetailScreen(),
              ),
            ]
        ),
      ],
    );
  }
}
