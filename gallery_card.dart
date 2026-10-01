import 'package:flutter/material.dart';
import '../models/photo.dart';
import '../theme/app_theme.dart';

/// One tappable tile in the Gallery's GridView.
class GalleryCard extends StatelessWidget {
  final Photo photo;
  final VoidCallback onTap;

  const GalleryCard({super.key, required this.photo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.border),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(photo.imagePath, fit: BoxFit.cover),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Text(
                photo.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.ink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
