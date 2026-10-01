import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../theme/app_theme.dart';
import '../widgets/app_nav_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meet the Team')),
      drawer: const AppNavDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Meet the Team',
                      style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "We're a small group of student developers who build things together, "
                      "learn together, and enjoy showing off our work. This app is our little "
                      "portfolio corner: who we are, what we've made, and how to reach us.",
                      style: TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              Text('Explore', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: _NavCard(
                      icon: Icons.people_outline,
                      label: 'About Us',
                      onTap: () => Navigator.pushNamed(context, AppRoutes.about),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _NavCard(
                      icon: Icons.photo_library_outlined,
                      label: 'Gallery',
                      onTap: () => Navigator.pushNamed(context, AppRoutes.gallery),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _NavCard(
                icon: Icons.mail_outline,
                label: 'Contact Us',
                onTap: () => Navigator.pushNamed(context, AppRoutes.contact),
                wide: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool wide;

  const _NavCard({required this.icon, required this.label, required this.onTap, this.wide = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          mainAxisAlignment: wide ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.primary),
            const SizedBox(width: 10),
            Text(label, style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.ink)),
          ],
        ),
      ),
    );
  }
}
