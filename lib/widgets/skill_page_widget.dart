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
        child: LayoutBuilder(
          builder: (context, constraints) {
            double maxWidth = constraints.maxWidth;
            bool isMobile = maxWidth < 600;
            bool isTablet = maxWidth >= 600 && maxWidth < 1024;
            bool isWeb = maxWidth >= 1024;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Skills & Tools',
                  style: TextStyle(
                    fontSize:  isMobile ? 28 : 48,
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
                    _buildSkillItem('Kotlin',isMobile ),
                    _buildSkillItem('Java', isMobile),
                    _buildSkillItem('Flutter', isMobile),
                    _buildSkillItem('Firebase', isMobile),
                    _buildSkillItem('Dart', isMobile),
                    _buildSkillItem('MVVM (Model-View-View Model)', isMobile),
                    _buildSkillItem('Jetpack Components', isMobile),
                    _buildSkillItem('Push Notifications', isMobile),
                    _buildSkillItem('Clean Architecture', isMobile),
                    _buildSkillItem('Dependency injection (Hilt, Koin, Dagger)', isMobile),
                    _buildSkillItem('App store & Play store deployment', isMobile),
                    _buildSkillItem('Firebase Crashlytics', isMobile),
                    _buildSkillItem('GetX & Riverpod', isMobile),
                    _buildSkillItem('Go router', isMobile),
                    _buildSkillItem('ViewModel', isMobile),
                    _buildSkillItem('LiveData',isMobile),
                    _buildSkillItem('Navigation',isMobile),
                    _buildSkillItem('Room & Hive DB',isMobile),
                    _buildSkillItem('Retrofit & Dio',isMobile),
                    _buildSkillItem('GitHub',isMobile),
                    _buildSkillItem('Stripe Payment Gateway',isMobile),
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
            );
          },

        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill, bool isMobile) {
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
          style:  TextStyle(
            color: Colors.white,
            fontSize: isMobile? 16: 18,
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

