import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/network/graphql_client.dart';
import '../viewmodels/country_cubit.dart';
import 'widgets/country_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
      ),
      body: BlocBuilder<CountryCubit, List<Country>>(
        builder: (context, countries) {
          if (countries.isEmpty) {
            context.read<CountryCubit>().fetchCountries();
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              return CountryCard(country: countries[index]);
            },
          );
        },
      ),
    );
  }
}
