import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../core/network/graphql_client.dart';

class CountryCubit extends Cubit<List<Country>> {
  CountryCubit() : super([]);

  void fetchCountries() async {
    final client = setupGraphQLClient();

    const String query = '''
    {
      countries {
        code
        name
        emoji
        continent {
          name
        }
      }
    }
    ''';

    final result = await client.query(QueryOptions(document: gql(query)));

    if (result.hasException) {
      log(result.exception.toString());
    } else {
      final countries = (result.data?['countries'] as List)
          .map((e) => Country.fromJson(e))
          .toList();
      emit(countries);
    }
  }
}
