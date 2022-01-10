import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  late final String id;
  late final String email;
  late final String name;
  late final String hobby;
  late final int balance;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.hobby = '',
    this.balance = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, name, hobby, balance];
}
