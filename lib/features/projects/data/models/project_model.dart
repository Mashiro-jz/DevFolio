import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
abstract class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    required String id,
    required String title,
    required String shortDescription,
    required String fullDescription,
    required String status,
    required String iconPath,
    required String bannerPath,
    required List<String> techStack,
    required List<String> keyFeatures,
    required String githubUrl,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}
