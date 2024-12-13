import 'package:mvvm_cubit_graphql/models/country_model/country.dart';
import 'package:mvvm_cubit_graphql/models/queries/country_queries.dart';
import 'package:mvvm_cubit_graphql/models/services/graphql_service_base.dart';

class Repo {
  final GraphQLServiceBase _graphQLService;

  Repo({required GraphQLServiceBase graphQLService})
      : _graphQLService = graphQLService;



  Future<List<Country>> fetchCountries() async {
    try {
      final result = await _graphQLService.query(queryString: CountryQueries.getCountryListQuery());

      if (result.data == null || result.data!['countries'] == null) {
        throw Exception('No data received from GraphQL query.');
      }
      final List<dynamic> countriesJson =
          result.data!['countries'] as List<dynamic>;

      return countriesJson.map((json) => Country.fromJson(json)).toList();
    } catch (e) {
      throw e.toString();
    }
  }
}
