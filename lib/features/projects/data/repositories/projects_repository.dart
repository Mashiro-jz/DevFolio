import 'dart:convert';

import 'package:devfolio/features/projects/data/models/project_model.dart';
import 'package:flutter/services.dart';

class ProjectsRepository {
  Future<List<ProjectModel>> getProjects() async {
    final String response = await rootBundle.loadString(
      'assets/data/projects.json',
    );

    List<dynamic> text = jsonDecode(response);
    return text.map((e) => ProjectModel.fromJson(e)).toList();
  }
}
