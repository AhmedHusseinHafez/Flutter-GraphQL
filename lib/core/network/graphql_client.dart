import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mvvm_cubit_graphql/core/constants/api_constants.dart';

GraphQLClient setupGraphQLClient() {
  final HttpLink httpLink = HttpLink(ApiConstants.baseUrl);

  return GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(store: InMemoryStore()),
  );
}


