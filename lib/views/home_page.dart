import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_cubit_graphql/core/injection/injection.dart';
import 'package:mvvm_cubit_graphql/viewmodels/country_cubit/country_cubit.dart';
import 'widgets/country_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Trigger the fetchCountries method on the Cubit.
    getIt<CountryCubit>().fetchCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
      ),
      body: BlocBuilder<CountryCubit, CountryState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (countries) => ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                return CountryCard(country: countries[index]);
              },
            ),
            error: (message) => Center(
              child: Text(message, style: const TextStyle(color: Colors.red)),
            ),
          );
        },
      ),
    );
  }
}
