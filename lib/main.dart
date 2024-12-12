import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_cubit_graphql/app/app.dart';
import 'package:mvvm_cubit_graphql/core/injection/injection.dart';
import 'package:mvvm_cubit_graphql/core/observer/bloc_observer.dart';

void main() {
  Future.wait([
    initGetIt(),
  ]).then((_) {
    Bloc.observer = AppObserver();

    runApp(MyApp());
  });
}
