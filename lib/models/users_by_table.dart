import 'dart:convert';
import 'package:equatable/equatable.dart';

class UsersByTable extends Equatable {

  factory UsersByTable.fromJson(String source) => UsersByTable.fromMap(json.decode(source));

  factory UsersByTable.fromMap(Map<String, dynamic> map) {
    
    return UsersByTable(
      map['userid'] ?? '',
      map['firstName'] ?? '',
      map['lastName'] ?? '',
    );
  }

  const UsersByTable(this.userid, this.firstName, this.lastName);
  final String? userid;
  final String firstName;
  final String lastName;

  String get fullName => '$firstName $lastName';

  UsersByTable copyWith({
    String? userid,
    String? firstName,
    String? lastName,
  }) {
    return UsersByTable(
      userid ?? this.userid,
      firstName ?? this.firstName,
      lastName ?? this.lastName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userid': userid,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'UsersByTable(userid: $userid, firstName: $firstName, lastName: $lastName)';

  @override
  List<Object?> get props => [userid, firstName, lastName];
}
