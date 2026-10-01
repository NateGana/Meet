import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../theme/app_theme.dart';

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Not Found')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 64, color: AppColors.primary),
              const SizedBox(height: 16),
              const Text(
                'Page Not Found',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.ink),
              ),
              const SizedBox(height: 8),
              const Text(
                "The page you're looking for doesn't exist.",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.muted),
              ),
              const SizedBox(height: 22),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.home),
                child: const Text('Return Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
