import 'package:hive/hive.dart';

part 'sementawis.g.dart';

@HiveType(typeId: 1)
class Sementawis extends HiveObject {
  @HiveField(0)
  final String type;
  @HiveField(1)
  final String code;
  @HiveField(2)
  final String registeredAt;

  Sementawis({
    required this.type,
    required this.code,
    required this.registeredAt,
  });
}
