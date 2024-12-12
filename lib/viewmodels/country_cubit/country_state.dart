part of 'country_cubit.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.loading() = _Loading;
  const factory CountryState.loaded(List<Country> countries) = _Loaded;
  const factory CountryState.error(String errorMessage) = _Error;
}
