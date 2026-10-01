import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../theme/app_theme.dart';

/// Shared navigation drawer so every screen can reach every other screen.
class AppNavDrawer extends StatelessWidget {
  const AppNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: AppColors.primary,
              child: const Text(
                'Meet the Team',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                // Take the user back to the main section, replacing this route.
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              },
            ),
            ListTile(
              leading: const Icon(Icons.people_outline),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.about);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('Gallery'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail_outline),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.contact);
              },
            ),
          ],
        ),
      ),
    );
  }
}
