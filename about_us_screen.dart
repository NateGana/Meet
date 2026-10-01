import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/member_card.dart';
import '../widgets/app_nav_drawer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  // TODO: Replace with your real names, roles, and descriptions.
  static const List<Map<String, String>> _members = [
    {
      'name': 'Member 1',
      'role': 'Navigation & Routes',
      'description': 'Placeholder description — replace with a short bio.',
      'initials': 'M1',
    },
    {
      'name': 'Member 2',
      'role': 'UI/UX & Reusable Components',
      'description': 'Placeholder description — replace with a short bio.',
      'initials': 'M2',
    },
    {
      'name': 'Member 3',
      'role': 'Gallery & Contact',
      'description': 'Placeholder description — replace with a short bio.',
      'initials': 'M3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      drawer: const AppNavDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Our Group', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 6),
              const Text(
                'A short student team building this project together for our Flutter course.',
                style: TextStyle(color: AppColors.muted, fontSize: 14),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: _members.length,
                  itemBuilder: (context, index) {
                    final m = _members[index];
                    return MemberCard(
                      name: m['name']!,
                      role: m['role']!,
                      description: m['description']!,
                      initials: m['initials']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
