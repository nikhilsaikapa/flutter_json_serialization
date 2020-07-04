import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
class Geo {
  Geo();
  String latitude, longitude;

  factory Geo.fromJson(Map<String, dynamic> data) => _$GeoFromJson(data);

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
