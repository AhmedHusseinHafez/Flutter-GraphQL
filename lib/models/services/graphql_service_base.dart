import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mvvm_cubit_graphql/core/constants/api_constants.dart';

abstract class GraphQLServiceBase<C, T> {
  C get client;
  Future<T> query({
    required String queryString,
    Map<String, dynamic>? variables,
  });
}

class GraphQLService implements GraphQLServiceBase<GraphQLClient, QueryResult> {
  static const String _endpoint = ApiConstants.baseUrl;
  late final GraphQLClient _client;

 

  GraphQLService() {
    _buildClient();
    
  }

  void _buildClient() {

    final Link link = HttpLink(_endpoint);

    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
    );
  }

  @override
  GraphQLClient get client => _client;

  @override
  Future<QueryResult> query({
    required String queryString,
    Map<String, dynamic>? variables,
  }) async {
    try {
      final QueryOptions options = QueryOptions(
        document: gql(queryString),
        variables: variables ?? {},
      );

      final result = await _client.query(options);

      if (result.hasException) {
        throw Exception(result.exception!.toString());
      }

      return result;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
