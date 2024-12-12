// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      emoji: json['emoji'] as String,
      continent: Continent.fromJson(json['continent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'emoji': instance.emoji,
      'continent': instance.continent,
    };

_$ContinentImpl _$$ContinentImplFromJson(Map<String, dynamic> json) =>
    _$ContinentImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ContinentImplToJson(_$ContinentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
