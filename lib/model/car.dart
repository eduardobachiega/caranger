import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable()
class Car {
  int id;
  int manufacturerId;
  String manufacturerName;
  String modelName;
  String color;

  Car(
      {this.id,
        this.manufacturerId,
        this.manufacturerName,
        this.modelName,
        this.color
      });


  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}