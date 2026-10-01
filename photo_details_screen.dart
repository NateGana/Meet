import 'package:flutter/material.dart';
import '../models/photo.dart';
import '../theme/app_theme.dart';

class PhotoDetailsScreen extends StatelessWidget {
  const PhotoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // The selected photo, passed in from Gallery through route arguments.
    final photo = ModalRoute.of(context)!.settings.arguments as Photo;

    return Scaffold(
      appBar: AppBar(
        title: Text(photo.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(photo.imagePath, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(photo.title, style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.person_outline, size: 16, color: AppColors.primary),
                        const SizedBox(width: 6),
                        Text(
                          'Contributed by ${photo.contributor}',
                          style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Text(photo.description, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Back to Gallery'),
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
