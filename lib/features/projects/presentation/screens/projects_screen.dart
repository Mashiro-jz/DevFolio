import 'package:devfolio/features/projects/presentation/providers/projects_provider.dart';
import 'package:devfolio/features/projects/presentation/widgets/project_timeline_tile.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectsScreen extends ConsumerWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsAsync = ref.watch(projectsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Projects')),
      body: projectsAsync.when(
        data: (projects) => ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return ProjectTimelineTile(
              project: project,
              isFirst: index == 0,
              isLast: index == projects.length - 1,
              onTap: () {}, // TODO : dodać tutaj ekran szczegółów
            );
          },
        ),
        error: (Object error, StackTrace stackTrace) =>
            Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
