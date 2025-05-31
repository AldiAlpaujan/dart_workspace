import 'package:json_annotation/json_annotation.dart';

part 'default_req.g.dart';

@JsonSerializable()
class DefaultReq {
  const DefaultReq();

  factory DefaultReq.fromJson(Map<String, dynamic> json) =>
      _$DefaultReqFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultReqToJson(this);
}
