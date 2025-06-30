import 'package:bhavya_sharma_portfolio/widgets/experience_page_widget.dart';
import 'package:bhavya_sharma_portfolio/widgets/hobbies_page_widget.dart';
import 'package:bhavya_sharma_portfolio/widgets/home_page_widget.dart';
import 'package:bhavya_sharma_portfolio/widgets/skill_page_widget.dart';
import 'package:bhavya_sharma_portfolio/widgets/summary_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
        fontFamily: 'Poppins', // Default font for the app
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'PlayfairDisplay',
          ),
          displayMedium: TextStyle(
            fontSize: 24,
            color: Colors.amber,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white70,
            height: 1.5,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onScroll);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _currentPage = _pageController.page?.round() ?? 0;
    });
  }

  void _navigateToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    void launchCV() async {
      const url = 'https://docs.google.com/document/d/1CvnDnWMCKYow0qwH0aG6RJY7XsvEs5wR/edit?usp=sharing&ouid=114414961108850837228&rtpof=true&sd=true';
      final uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.platformDefault,
          webOnlyWindowName: '_blank', // 👈 Opens in a new browser tab on web
        );
      } else {
        throw 'Could not launch $url';
      }
    }
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.orange.withOpacity(0.3),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),

          LayoutBuilder(
            builder: (context, constraints) {
              double maxWidth = constraints.maxWidth;
              bool isMobile = maxWidth < 600;
              bool isTablet = maxWidth >= 600 && maxWidth < 1024;
              bool isWeb = maxWidth >= 1024;

              return Column(
                children: [
                  // Navigation bar
                  Padding(
                    padding:  EdgeInsets.only(
                      top:isMobile?25.0: 50.0,
                      bottom: isMobile?25.0: 50.0,
                      left: isMobile? 80: 110.0,
                      right: isMobile? 80:110.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            AnimatedBuilder(
                              animation: _animationController,
                              builder: (context, child) {
                                return Opacity(
                                  opacity: _animationController.value,
                                  child: child,
                                );
                              },
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Open to work',
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            launchCV();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                          ),
                          child: const Text(
                            'Download CV',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'AlbertSans',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // PageView for scrollable sections
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return const HomePageWidget();
                          case 1:
                            return const SummaryPageWidget();
                          case 2:
                            return const ExperiencePageWidget();
                          case 3:
                            return const SkillPageWidget();
                          case 4:
                            return const HobbiesPageWidget();
                          default:
                            return Container();
                        }
                      },
                    ),
                  ),
                  // Bottom navigation
                  Container(
                    height: 50,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: LayoutBuilder(
                        builder: (context, constraints) {
                          double maxWidth = constraints.maxWidth;
                          bool isMobile = maxWidth < 600;
                          bool isTablet = maxWidth >= 600 && maxWidth < 1024;
                          bool isWeb = maxWidth >= 1024;

                          double buttonSpacing = isMobile ? 8 : 16;
                          double iconSize = isMobile ? 20 : 24;
                          double fontSize = isMobile ? 10 : 14;

                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildNavButton(
                                Icons.person_outline,
                                (isMobile) ? '' : 'Home',
                                _currentPage == 0,
                                0,
                              ),
                              _buildNavButton(
                                Icons.description_outlined,
                                (isMobile) ? '' : 'Summary',
                                _currentPage == 1,
                                1,
                              ),
                              _buildNavButton(
                                Icons.work_outline,
                                (isMobile) ? '' : 'Experience',
                                _currentPage == 2,
                                2,
                              ),
                              _buildNavButton(
                                Icons.psychology_outlined,
                                (isMobile) ? '' : 'Skills',
                                _currentPage == 3,
                                3,
                              ),
                              _buildNavButton(Icons.link,
                                  (isMobile) ? '' : 'Hobbies', _currentPage == 4,
                                  4),
                            ],
                          );
                        }
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(
    IconData icon,
    String label,
    bool isSelected,
    int page,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: 60,
        child: TextButton.icon(
          onPressed: () => _navigateToPage(page),
          icon: Icon(
            icon,
            color: isSelected ? Colors.black : Colors.white54,
            size: 20,
          ),
          label: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white54,
              fontSize: 14,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: isSelected ? Colors.white : null,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildLinksPage() {
    return Padding(
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
            'Hobbies',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          const SizedBox(height: 48),
          // Social Media Links
          /*Wrap(
            spacing: 16,
            children: [
              _buildSocialButton('LinkedIn', Icons.contact_page, Colors.blue),
            *//*  _buildSocialButton('Twitter', Icons.flutter_dash, Colors.black),
              _buildSocialButton('Instagram', Icons.camera_alt, Colors.purple),
              _buildSocialButton('Behance', Icons.brush, Colors.black),*//*
            ],
          ),
          const SizedBox(height: 40),*/
          /*Row(
            children: [
              _buildContactLink(
                Icons.email,
                'bhavya.007@hotmail.com',
                Colors.amber,
              ),
              const SizedBox(width: 32),
              _buildContactLink(Icons.phone, '7307101259', Colors.amber),
            ],
          ),*/
          /*const SizedBox(height: 48),
          // Interests & Hobbies Section
          const Text(
            'Interests & Hobbies',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.amber,
            ),
          ),*/
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildInterestChip('Hiking & V-logging'),
              _buildInterestChip('Video Editing'),
              _buildInterestChip('Singing & Playing Guitar'),
              _buildInterestChip('Coding in Pressure-Free Environments'),
              _buildInterestChip('Bike Riding'),
            ],
          ),

          // Contact Information
          const Spacer(),
          // Footer
          const Text(
            '© 2025 Portfolio by Bhavya Sharma',
            style: TextStyle(color: Colors.white54, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton(String name, IconData icon, Color color) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.2), width: 1),
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.white,
        iconSize: 28,
        onPressed: () {
          // Add your social media link handling here
        },
      ),
    );
  }

  Widget _buildContactLink(IconData icon, String text, Color color) {
    return Row(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }

  Widget _buildInterestChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.amber.withOpacity(0.3)),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}


