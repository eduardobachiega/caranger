// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

History _$HistoryFromJson(Map<String, dynamic> json) {
  return History(
    id: json['id'] as int,
    price: (json['price'] as num)?.toDouble(),
    type: json['type'] as String,
    local: json['local'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$HistoryToJson(History instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'type': instance.type,
      'local': instance.local,
      'description': instance.description,
    };
