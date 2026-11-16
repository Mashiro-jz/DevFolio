import 'package:devfolio/core/theme/app_colors.dart';
import 'package:devfolio/features/projects/presentation/providers/projects_provider.dart';
import 'package:devfolio/features/projects/presentation/widgets/project_timeline_tile.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectsScreen extends ConsumerWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectsAsync = ref.watch(projectsProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Projects",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: context.colors.textPrimary,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "A collection of projects I've worked on \n and technologies I've used.",
                style: TextStyle(
                  fontSize: 16,
                  color: context.colors.textSecondary,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 4),
              Expanded(
                child: projectsAsync.when(
                  data: (projects) => ListView.builder(
                    padding: const EdgeInsets.only(top: 16, bottom: 32),
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      final project = projects[index];
                      return ProjectTimelineTile(
                        project: project,
                        isFirst: index == 0,
                        isLast: index == projects.length - 1,
                        onTap: () =>
                            context.go('/projects/details/${project.id}'),
                      );
                    },
                  ),
                  error: (Object error, StackTrace stackTrace) =>
                      Center(child: Text(error.toString())),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
