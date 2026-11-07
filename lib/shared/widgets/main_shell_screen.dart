import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainShellScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const MainShellScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.work),
            label: 'Projects',
            icon: Icon(Icons.work_outline),
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.star),
            label: 'Skills',
            icon: Icon(Icons.star_outline),
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            label: 'Journey',
            icon: Icon(Icons.school_outlined),
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.contact_mail),
            label: 'Contact',
            icon: Icon(Icons.contact_mail_outlined),
          ),
        ],
      ),
    );
  }
}
