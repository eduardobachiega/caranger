import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable()
class Car {
  int id;
  int manufacturerId;
  String manufacturerName;
  String modelName;
  String color;
  String image;

  Car(
      {this.id,
        this.manufacturerId,
        this.manufacturerName,
        this.modelName,
        this.color,
        this.image
      });


  @override
  String toString() {
    return 'Car{id: $id, manufacturerId: $manufacturerId, manufacturerName: $manufacturerName, modelName: $modelName, color: $color, image: $image}';
  }

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}