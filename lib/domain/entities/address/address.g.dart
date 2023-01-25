// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String,
      number: json['number'] as String,
      code: json['code'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'number': instance.number,
      'code': instance.code,
      'city': instance.city,
    };
