import 'package:json_annotation/json_annotation.dart';

import 'car.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  List<Car> cars;


  User(
      {this.id,
        this.name,
        this.cars
        });



  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}