// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      json['id'] as int,
      json['name'] as String,
      json['age'] as int,
      json['currentChild'] == null
          ? null
          : Child.fromJson(json['currentChild'] as Map<String, dynamic>),
      (json['childs'] as List)
          ?.map((e) =>
              e == null ? null : Child.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'currentChild': instance.currentChild,
      'childs': instance.child
    };

Child _$ChildFromJson(Map<String, dynamic> json) {
  return Child(json['id'] as int, json['name'] as String, json['age'] as int);
}

Map<String, dynamic> _$ChildToJson(Child instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age
    };
