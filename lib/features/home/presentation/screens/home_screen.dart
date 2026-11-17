import 'package:devfolio/core/theme/app_colors.dart';
import 'package:devfolio/features/projects/presentation/providers/projects_provider.dart';
import 'package:devfolio/features/projects/presentation/widgets/project_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile (góra)
              SizedBox(height: 32),
              CircleAvatar(
                radius: 60,
                child: Icon(Icons.person),
              ), // TODO : Dać swoje zdjęcie z czasem
              SizedBox(height: 16),
              Text(
                "Aleksander Wiącek",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: colors.textPrimary,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Computer Science Student at Wrocław University of Science and Technology",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: colors.textSecondary,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.circle, size: 10, color: Colors.green),
                    SizedBox(width: 6),
                    Text(
                      'Open to opportunities',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              // About me
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 32),
                child: Text(
                  "Passionate about software development, problem solving and building applications that make a difference.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: colors.textSecondary),
                ),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  // TODO : zmienić ikony i podpiąć linki z url_launcher
                  IconButton(icon: Icon(Icons.code), onPressed: () {}),
                  IconButton(icon: Icon(Icons.code), onPressed: () {}),
                  IconButton(icon: Icon(Icons.code), onPressed: () {}),
                  IconButton(icon: Icon(Icons.code), onPressed: () {}),
                  IconButton(icon: Icon(Icons.code), onPressed: () {}),
                  IconButton(icon: Icon(Icons.code), onPressed: () {}),
                ],
              ),
              SizedBox(height: 32),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Projects",
                          style: TextStyle(
                            color: colors.textPrimary,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () => context.go('/projects'),
                          child: Text(
                            "View all ->",
                            style: TextStyle(
                              fontSize: 14,
                              color: colors.textSecondary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ref
                        .watch(projectsProvider)
                        .when(
                          data: (projects) {
                            final featuredProject = projects.first;
                            return ProjectCard(
                              project: featuredProject,
                              onTap: () => context.go(
                                '/projects/details/${featuredProject.id}',
                              ),
                            );
                          },
                          error: (error, stack) =>
                              Center(child: Text('Błąd: $error')),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
