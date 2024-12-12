import 'package:get_it/get_it.dart';
import 'package:mvvm_cubit_graphql/models/repo/repo.dart';
import 'package:mvvm_cubit_graphql/models/services/graphql_service_base.dart';
import 'package:mvvm_cubit_graphql/viewmodels/country_cubit/country_cubit.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt.registerLazySingleton<GraphQLServiceBase>(() => GraphQLService());
  getIt.registerLazySingleton<Repo>(() => Repo(graphQLService: getIt<GraphQLServiceBase>()));
  getIt.registerLazySingleton<CountryCubit>(() => CountryCubit(getIt<Repo>()));
}
