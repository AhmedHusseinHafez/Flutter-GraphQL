import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient setupGraphQLClient() {
  final HttpLink httpLink = HttpLink('https://countries.trevorblades.com');

  return GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(store: InMemoryStore()),
  );
}

class Country {
  final String code;
  final String name;
  final String emoji;
  final String continent;

  Country({
    required this.code,
    required this.name,
    required this.emoji,
    required this.continent,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      code: json['code'],
      name: json['name'],
      emoji: json['emoji'],
      continent: json['continent']['name'],
    );
  }
}
