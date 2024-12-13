import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mvvm_cubit_graphql/models/country_model/country.dart';
import 'package:mvvm_cubit_graphql/models/repo/repo.dart';

part 'country_state.dart';
part 'country_cubit.freezed.dart';

class CountryCubit extends Cubit<CountryState> {
  final Repo _repo;
  CountryCubit(this._repo) : super(CountryState.loading());

  void fetchCountries() async {
    emit(CountryState.loading());
    try {
      final countries = await _repo.fetchCountries();
      emit(CountryState.loaded(countries));
    } catch (e) {
      emit(CountryState.error('$e'));
    }
  }
}
