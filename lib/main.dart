import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'viewmodels/country_cubit.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM Cubit GraphQL',
      home: BlocProvider(
        create: (_) => CountryCubit(),
        child: const HomePage(),
      ),
    );
  }
}
