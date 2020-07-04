import 'package:json_annotation/json_annotation.dart';

import 'geo.dart';

part 'address.g.dart';

@JsonSerializable(explicitToJson: true)
class Address {
  Address();
  String street, suite, city, zipCode;
  Geo geo;

  factory Address.fromJson(Map<String, dynamic> data) => _$AddressFromJson(data);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
