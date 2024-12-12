import 'package:flutter/material.dart';

import '../../models/country_model/country.dart';

class CountryCard extends StatelessWidget {
  final Country country;

  const CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(country.emoji, style: const TextStyle(fontSize: 24)),
        title: Text(country.name),
        subtitle: Text(country.continent.name),
        trailing: Text(country.code),
      ),
    );
  }
}
