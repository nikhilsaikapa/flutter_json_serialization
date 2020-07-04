import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  Company();
  String name, catchPhrase, bs;

  factory Company.fromJson(Map<String, dynamic> data) => _$CompanyFromJson(data);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
