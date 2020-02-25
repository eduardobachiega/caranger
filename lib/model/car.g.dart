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
    image: json['image'] as String,
    year: json['year'] as int,
    totalCosts: (json['totalCosts'] as num)?.toDouble(),
    fuel: json['fuel'] as String,
    history: (json['history'] as List)
        ?.map((e) =>
            e == null ? null : History.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'manufacturerId': instance.manufacturerId,
      'manufacturerName': instance.manufacturerName,
      'modelName': instance.modelName,
      'color': instance.color,
      'image': instance.image,
      'year': instance.year,
      'totalCosts': instance.totalCosts,
      'fuel': instance.fuel,
      'history': instance.history,
    };
