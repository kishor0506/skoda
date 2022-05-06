import 'package:equatable/equatable.dart';

class Users extends Equatable {
  const Users({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  final String id;
  final String? email;
  final String? name;
  final String? photo;

  static const empty = Users(id: '');

  bool get isEmpty => this == Users.empty;
  bool get isNotEmpty => this != Users.empty;

  @override
  List<Object?> get props => [id, email, name, photo];
}
