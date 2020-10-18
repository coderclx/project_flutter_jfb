import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'age')
  int age;

  @JsonKey(name: 'currentChild')
  Child currentChild;

  @JsonKey(name: 'childs')
  List<Child> child;

  User(
    this.id,
    this.name,
    this.age,
    this.currentChild,
    this.child,
  );

  factory User.fromJson(Map<String, dynamic> srcJson) =>
      _$UserFromJson(srcJson);
}

@JsonSerializable()
class Child extends Object {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'age')
  int age;

  Child(
    this.id,
    this.name,
    this.age,
  );

  factory Child.fromJson(Map<String, dynamic> srcJson) =>
      _$ChildFromJson(srcJson);
}
