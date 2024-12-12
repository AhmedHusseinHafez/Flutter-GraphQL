import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String code,
    required String name,
    required String emoji,
    required Continent continent,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class Continent with _$Continent {
  const factory Continent({
    required String name,
  }) = _Continent;

  factory Continent.fromJson(Map<String, dynamic> json) =>
      _$ContinentFromJson(json);
}