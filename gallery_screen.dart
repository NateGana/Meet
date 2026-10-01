import 'package:flutter/material.dart';
import '../models/photo.dart';
import '../routes/app_routes.dart';
import '../theme/app_theme.dart';
import '../widgets/gallery_card.dart';
import '../widgets/app_nav_drawer.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  // TODO: Replace these with your real photos (keep at least one per member).
  static const List<Photo> _photos = [
    Photo(imagePath: 'assets/images/photo1.jpg', title: 'Photo 1', description: 'Placeholder description for Photo 1. Replace with real details.', contributor: 'Member 1'),
    Photo(imagePath: 'assets/images/photo2.jpg', title: 'Photo 2', description: 'Placeholder description for Photo 2. Replace with real details.', contributor: 'Member 1'),
    Photo(imagePath: 'assets/images/photo3.jpg', title: 'Photo 3', description: 'Placeholder description for Photo 3. Replace with real details.', contributor: 'Member 2'),
    Photo(imagePath: 'assets/images/photo4.jpg', title: 'Photo 4', description: 'Placeholder description for Photo 4. Replace with real details.', contributor: 'Member 2'),
    Photo(imagePath: 'assets/images/photo5.jpg', title: 'Photo 5', description: 'Placeholder description for Photo 5. Replace with real details.', contributor: 'Member 3'),
    Photo(imagePath: 'assets/images/photo6.jpg', title: 'Photo 6', description: 'Placeholder description for Photo 6. Replace with real details.', contributor: 'Member 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gallery')),
      drawer: const AppNavDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Text(
                  'Tap a photo to see details.',
                  style: TextStyle(color: AppColors.muted, fontSize: 13),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(6),
                  itemCount: _photos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.82,
                  ),
                  itemBuilder: (context, index) {
                    final photo = _photos[index];
                    return GalleryCard(
                      photo: photo,
                      onTap: () {
                        // Pass the selected photo to Photo Details via route arguments.
                        Navigator.pushNamed(context, AppRoutes.photoDetails, arguments: photo);
                      },
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
