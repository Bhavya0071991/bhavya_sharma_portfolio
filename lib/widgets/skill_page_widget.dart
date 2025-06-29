import 'package:flutter/material.dart';


class SkillPageWidget extends StatelessWidget {
  const SkillPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 100.0,
          right: 32.0,
          top: 15.0,
          bottom: 32.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Skills & Tools',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 48),
            // Skills Section
            Wrap(
              spacing: 48,
              runSpacing: 20,
              children: [
                _buildSkillItem('Kotlin'),
                _buildSkillItem('Java'),
                _buildSkillItem('Flutter'),
                _buildSkillItem('Firebase'),
                _buildSkillItem('Dart'),
                _buildSkillItem('MVVM (Model-View-View Model)'),
                _buildSkillItem('Jetpack Components'),
                _buildSkillItem('Push Notifications'),
                _buildSkillItem('Clean Architecture'),
                _buildSkillItem('Dependency injection (Hilt, Koin, Dagger)'),
                _buildSkillItem('App store & Play store deployment'),
                _buildSkillItem('Firebase Crashlytics'),
                _buildSkillItem('GetX & Riverpod'),
                _buildSkillItem('Go router'),
                _buildSkillItem('ViewModel'),
                _buildSkillItem('LiveData'),
                _buildSkillItem('Navigation'),
                _buildSkillItem('Room & Hive DB'),
                _buildSkillItem('Retrofit & Dio'),
                _buildSkillItem('GitHub'),
              ],
            ),
            const SizedBox(height: 64),
            // Tools Section
            Wrap(
              spacing: 32,
              runSpacing: 32,
              children: [
                _buildToolItem('Flutter', 'assets/flutter_logo.png'),
                _buildToolItem('Android Studio', 'assets/android_studio.png'),
                _buildToolItem('Firebase', 'assets/firebase_logo.png'),
                _buildToolItem('Cursor AI', 'assets/cursor_logo.png'),
                _buildToolItem('Figma', 'assets/figma_logo.webp'),
                _buildToolItem('Agora SDK', 'assets/agora_logo.webp'),
                _buildToolItem('Git', 'assets/github_logo.webp'),
                _buildToolItem('Jira', 'assets/jira_logo.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          skill,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildToolItem(String name, String imagePath) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

}

