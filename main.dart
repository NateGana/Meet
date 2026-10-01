import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/about_us_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/photo_details_screen.dart';
import 'screens/contact_us_screen.dart';
import 'screens/unknown_route_screen.dart';

void main() {
  runApp(const MeetTheTeamApp());
}

class MeetTheTeamApp extends StatelessWidget {
  const MeetTheTeamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meet the Team',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: AppRoutes.home,
      // All routes registered in one place.
      routes: {
        '/': (context) => const HomeScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.about: (context) => const AboutUsScreen(),
        AppRoutes.gallery: (context) => const GalleryScreen(),
        AppRoutes.contact: (context) => const ContactUsScreen(),
        AppRoutes.photoDetails: (context) => const PhotoDetailsScreen(),
      },
      // Fallback for any route name that isn't registered above.
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const UnknownRouteScreen());
      },
    );
  }
}
