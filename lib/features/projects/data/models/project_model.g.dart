// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) =>
    _ProjectModel(
      id: json['id'] as String,
      title: json['title'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
      status: json['status'] as String,
      iconPath: json['iconPath'] as String,
      bannerPath: json['bannerPath'] as String,
      techStack: (json['techStack'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      keyFeatures: (json['keyFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      githubUrl: json['githubUrl'] as String,
    );

Map<String, dynamic> _$ProjectModelToJson(_ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
      'status': instance.status,
      'iconPath': instance.iconPath,
      'bannerPath': instance.bannerPath,
      'techStack': instance.techStack,
      'keyFeatures': instance.keyFeatures,
      'githubUrl': instance.githubUrl,
    };
