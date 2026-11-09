import 'package:devfolio/features/projects/data/models/project_model.dart';
import 'package:devfolio/features/projects/data/repositories/projects_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectsRepositoryProvider = Provider<ProjectsRepository>(
  (ref) => ProjectsRepository(),
);

final projectsProvider = FutureProvider<List<ProjectModel>>(
  (ref) => ref.watch(projectsRepositoryProvider).getProjects(),
);
