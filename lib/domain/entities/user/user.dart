import '/domain/domain.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  static checkProp({
    required Map<String, dynamic> schema,
    required dynamic prop,
  }) {
    if (schema[prop] == null) {
      throw Exception('Property $prop is required');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'address': address.toJson(),
      'phone': phone,
      'website': website,
      'company': company.toJson(),
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    checkProp(schema: json, prop: 'id');
    checkProp(schema: json, prop: 'name');
    checkProp(schema: json, prop: 'username');
    checkProp(schema: json, prop: 'email');
    checkProp(schema: json, prop: 'address');
    checkProp(schema: json, prop: 'phone');
    checkProp(schema: json, prop: 'website');
    checkProp(schema: json, prop: 'company');

    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: Address.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: Company.fromJson(json['company']),
    );
  }
}
