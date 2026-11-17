import 'package:devfolio/core/theme/app_colors.dart';
import 'package:devfolio/features/projects/data/models/project_model.dart';
import 'package:devfolio/features/projects/presentation/providers/projects_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colors;

    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.diamond_outlined,
                      color: colors.primary,
                      size: 26,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: colors.surfaceVariant,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.dark_mode_outlined,
                          color: colors.textSecondary,
                          size: 18,
                        ),
                        onPressed: () {
                          // TODO : DARKMODE zaimplementować
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 160,
                height: 160,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            colors.primary.withValues(alpha: 0.25),
                            colors.primary.withValues(alpha: 0),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: colors.primaryContainer,
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: colors.primary,
                      ),
                    ), // TODO : Dać swoje zdjęcie z czasem
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Aleksander Wiącek",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: colors.textPrimary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Computer Science Student",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: colors.primary,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: colors.statusGreenBg,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.circle, size: 8, color: colors.statusGreenText),
                    const SizedBox(width: 8),
                    Text(
                      'Open to opportunities',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: colors.statusGreenText,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Text(
                  "Passionate about software development, problem solving and building applications that make a difference.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colors.textSecondary,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 20,
                runSpacing: 14,
                alignment: WrapAlignment.center,
                children: [
                  // TODO : podpiąć linki z url_launcher
                  _TechBadge(
                    icon: Icons.flutter_dash,
                    color: const Color(0xFF02569B),
                  ),
                  _TechBadge(
                    icon: Icons.coffee,
                    color: const Color(0xFFE76F00),
                  ),
                  _TechBadge(icon: Icons.eco, color: const Color(0xFF6DB33F)),
                  _TechBadge(icon: Icons.code, color: colors.textPrimary),
                  _TechBadge(
                    icon: Icons.sailing,
                    color: const Color(0xFF2496ED),
                  ),
                  _TechBadge(
                    icon: Icons.storage,
                    color: const Color(0xFF336791),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Projects",
                          style: TextStyle(
                            color: colors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () => context.go('/projects'),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(0, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "View all",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: colors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward,
                                size: 14,
                                color: colors.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ref
                        .watch(projectsProvider)
                        .when(
                          data: (projects) {
                            final featuredProject = projects.first;
                            return _FeaturedProjectCard(
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
                    const SizedBox(height: 24),
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

class _TechBadge extends StatelessWidget {
  final IconData icon;
  final Color color;
  const _TechBadge({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: 28);
  }
}

class _FeaturedProjectCard extends StatelessWidget {
  final ProjectModel project;
  final VoidCallback onTap;

  const _FeaturedProjectCard({required this.project, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Material(
      color: colors.surfaceVariant,
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: colors.border.withValues(alpha: 0.5),
              width: 0.8,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Project icon
              Container(
                width: 44,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF101828),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  project.title.isEmpty ? '?' : project.title[0].toUpperCase(),
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B7CF6),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // Project information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      project.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.3,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      project.shortDescription,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: colors.textSecondary,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
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
