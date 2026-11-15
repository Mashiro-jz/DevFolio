import 'dart:math' as math;

import 'package:devfolio/core/theme/app_colors.dart';
import 'package:devfolio/features/projects/data/models/project_model.dart';
import 'package:devfolio/features/projects/presentation/widgets/project_card.dart';
import 'package:material_ui/material_ui.dart';

class _TimelinePainter extends CustomPainter {
  final Color dotColor;
  final Color lineColor;
  final bool isFirst;
  final bool isLast;

  _TimelinePainter({
    required this.dotColor,
    required this.lineColor,
    required this.isFirst,
    required this.isLast,
  });

  static const double dotX = 26;
  static const double dotY = 16 + 24;
  static const double sway = 14;
  double _waveX(double y, double height) {
    if (y < dotY) {
      return dotX + sway * math.cos(math.pi / 2 * y / dotY);
    }
    final quarter = math.max((height - dotY) / 3, 1.0);
    final d = y - dotY;

    if (d <= quarter) {
      return dotX - sway * math.sin(math.pi / 2 * d / quarter);
    }
    return dotX - sway * math.cos(math.pi * (d - quarter) / (2 * quarter));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    final startY = isFirst ? dotY : 0.0;
    final endY = isLast ? dotY : size.height;

    final path = Path()..moveTo(_waveX(startY, size.height), startY);
    for (double y = startY + 2; y < endY; y += 2) {
      path.lineTo(_waveX(y, size.height), y);
    }
    path.lineTo(_waveX(endY, size.height), endY);

    canvas.drawPath(path, linePaint);

    canvas.drawCircle(
      const Offset(dotX, dotY),
      9,
      Paint()..color = dotColor.withValues(alpha: 0.25),
    );
    canvas.drawCircle(const Offset(dotX, dotY), 5, Paint()..color = dotColor);
  }

  @override
  bool shouldRepaint(covariant _TimelinePainter oldDelegate) {
    return oldDelegate.dotColor != dotColor ||
        oldDelegate.lineColor != lineColor ||
        oldDelegate.isFirst != isFirst ||
        oldDelegate.isLast != isLast;
  }
}

class ProjectTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final ProjectModel project;
  final VoidCallback onTap;

  const ProjectTimelineTile({
    super.key,
    required this.project,
    required this.isFirst,
    required this.isLast,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final lineColor = Color.alphaBlend(
      colors.primary.withValues(alpha: 0.30),
      colors.surface,
    );

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ProjectCard(project: project, onTap: onTap, leadingInset: 40),
        ),
        Positioned.fill(
          child: IgnorePointer(
            child: CustomPaint(
              painter: _TimelinePainter(
                dotColor: colors.primary.withValues(alpha: 0.55),
                lineColor: lineColor,
                isFirst: isFirst,
                isLast: isLast,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
