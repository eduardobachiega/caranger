// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Car _$CarFromJson(Map<String, dynamic> json) {
  return Car(
    id: json['id'] as int,
    manufacturerId: json['manufacturerId'] as int,
    manufacturerName: json['manufacturerName'] as String,
    modelName: json['modelName'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'manufacturerId': instance.manufacturerId,
      'manufacturerName': instance.manufacturerName,
      'modelName': instance.modelName,
      'color': instance.color,
    };
