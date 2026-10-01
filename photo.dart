/// A single gallery photo: where the image lives, what it's called,
/// a short description, and which member contributed it.
class Photo {
  final String imagePath;
  final String title;
  final String description;
  final String contributor;

  const Photo({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.contributor,
  });
}
