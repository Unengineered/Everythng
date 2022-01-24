// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      description: json['description'] as String,
      pictures: (json['pictures'] as List<dynamic>)
          .map((e) => Uri.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'description': instance.description,
      'pictures': instance.pictures.map((e) => e.toString()).toList(),
    };
