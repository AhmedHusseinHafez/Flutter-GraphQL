import 'package:flutter/material.dart';
import 'package:mvvm_cubit_graphql/core/router/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVVM Cubit GraphQL',
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
