import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String userName;

  @HiveField(2)
  final String userNumber;

  UserModel({
    required this.id,
    required this.userName,
    required this.userNumber,
  });
}
