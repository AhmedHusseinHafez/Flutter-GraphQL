import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_cubit_graphql/core/injection/injection.dart';
import 'package:mvvm_cubit_graphql/viewmodels/country_cubit/country_cubit.dart';
import 'package:mvvm_cubit_graphql/views/home_page.dart';

class Routes {
  static const String home = '/';
}

class RouteGenerator {
  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CountryCubit>(),
            child: const HomePage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
            child: Text('No Route Found ${settings.name}'),
          )),
        );
    }
  }
}
