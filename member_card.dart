import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Reusable card for one team member on the About Us screen.
/// Pass in a name, role, description, and (optional) an initials string
/// for the avatar — used for every member instead of duplicating UI code.
class MemberCard extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final String initials;

  const MemberCard({
    super.key,
    required this.name,
    required this.role,
    required this.description,
    required this.initials,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.primary,
            child: Text(
              initials,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 2),
                Text(
                  role,
                  style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600, fontSize: 12.5),
                ),
                const SizedBox(height: 6),
                Text(description, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
