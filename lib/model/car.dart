import 'package:caranger/model/history.dart';
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
  int year;
  double totalCosts;
  String fuel;
  List<History> history;

  Car(
      {this.id,
        this.manufacturerId,
        this.manufacturerName,
        this.modelName,
        this.color,
        this.image,
        this.year,
        this.totalCosts,
        this.fuel,
        this.history
      });

  @override
  String toString() {
    return 'Car{id: $id, manufacturerId: $manufacturerId, '
        'manufacturerName: $manufacturerName, modelName: $modelName, '
        'color: $color, image: $image, year: $year, totalCosts: $totalCosts, '
        'fuel: $fuel, history: $history}';
  }

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}