import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';

class ExperiencePageWidget extends StatelessWidget {
  const ExperiencePageWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const CarouselScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 100.0,
          right: 100.0,
          top: 15.0,
          bottom: 2.0,
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
                  'Work Experience',
                  style: TextStyle(
                    fontSize: isMobile ? 28 : 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 32),
                // Experience Item
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 16),
                             Text(
                              'Mobile App Developer',
                              style: TextStyle(
                                fontSize:isMobile ? 21 : 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                            'Snakescript LLP',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: isMobile ? 14 : 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '2022 - Present',
                            style: TextStyle(color: Colors.amber, fontSize: isMobile ? 14 : 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                     Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'At Snake-script LLP, I lead developed efforts on a range of high-profile projects, '
                            'Developed Android (Kotlin) and Flutter applications for both Android and iOS.'
                            'Implemented one-on-one video and voice calling using Agora SDK.'
                            'Integrated speech-to-text features and background notifications with Firebase.'
                            'Developed real-time chat functionalities using sockets and API calls with Dio.'
                            'Currently started working on Cursor AI IDE which reduces development time as well',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: isMobile ? 14 : 16,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                // Selected Projects Section
                Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: isMobile ? 21 : 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 24),
                // Project Grid
                isMobile ? Column(
                  children: [
                    _buildProjectCard(
                      isMobile,
                      'Breath & Heart',
                      'This app is developer in native android. This app is to meditate and to improve your health',
                      'assets/breathnheart.png',
                    ),

                    _buildProjectCard(
                      isMobile,
                      'HHA 365',
                      'This app is developed in flutter, uses to manage caregivers and patients',
                      'assets/hha.png',
                    ),

                    _buildProjectCard(
                      isMobile,
                      'NP 168',
                      'NP168 is designed to empower network providers in the home health care industry.',
                      'assets/np168.png',
                    ),

                    _buildProjectCard(
                      isMobile,
                      'Prodriver & Prodrive',
                      'This app is developer in flutter and uses to manage drivers and vehicles.',
                      'assets/prodriver.png',
                    ),
                  ],
                )
                    : Row(
                  children: [
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Breath & Heart',
                        'This app is developer in native android. This app is to meditate and to improve your health',
                        'assets/breathnheart.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'HHA 365',
                        'This app is developed in flutter, uses to manage caregivers and patients',
                        'assets/hha.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'NP 168',
                        'NP168 is designed to empower network providers in the home health care industry.',
                        'assets/np168.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Prodriver & Prodrive',
                        'This app is developer in flutter and uses to manage drivers and vehicles.',
                        'assets/prodriver.png',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                isMobile ?  Column(
                  children: [
                    _buildProjectCard(
                      isMobile,
                      'Whel App',
                      'This app is developed in flutter and uses to manage to connect patients with doctors',
                      'assets/whelapp.png',
                    ),
                    const SizedBox(width: 16),
                    _buildProjectCard(
                      isMobile,
                      'Clock-In',
                      'This app is developed in flutter and this app is used to clock in and out of drivers.',
                      'assets/clockin.png',
                    ),
                    const SizedBox(width: 16),
                    _buildProjectCard(
                      isMobile,
                      'Shopnet',
                      'This app is developed in flutter and it provide domain suggestions for your business',
                      'assets/shopnet.png',
                    ),
                  ],
                ):
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Whel App',
                        'This app is developed in flutter and uses to manage to connect patients with doctors',
                        'assets/whelapp.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Clock-In',
                        'This app is developed in flutter and this app is used to clock in and out of drivers.',
                        'assets/clockin.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Shopnet',
                        'This app is developed in flutter and it provide domain suggestions for your business',
                        'assets/shopnet.png',
                      ),
                    ),
                  ],
                ),
                // Add the education section here
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 16),
                         Text(
                          'Android Developer',
                          style: TextStyle(
                            fontSize: isMobile ? 21 : 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        'Glocify Technologies',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: isMobile ? 13 : 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Nov 2022 - June 2023',
                        style: TextStyle(color: Colors.amber, fontSize: isMobile ? 13 : 16),
                      ),
                    ],

                  ),
                ),
                const SizedBox(height: 16),
                 Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'At Glocify, I had developed a mobile app for a client which he used in his business, app was not published on play store but it was used in his business. Irs called "Tracebaility", I was working on Temple Bliss app which was a terocard reader app which used to work using video and audio calls using Twillio. Here i started learning flutter. ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: isMobile ? 14 : 16,
                      height: 1.6,
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                // Selected Projects Section
                 Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: isMobile ? 21 : 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 24),
                // Project Grid
                isMobile ? Column(
                  children: [
                    _buildProjectCard(
                      isMobile,
                      'Temple Bliss',
                      'This app is developed in Android Native (Kotlin) and This app gives the most accurate psychic readings from real psychics LIVE on TempleBliss',
                      'assets/templebliss.png',
                    ),
                    const SizedBox(width: 16),
                    _buildProjectCard(
                      isMobile,
                      'Traceability',
                      'This app is developed in in Android Native (Kotlin), This app is a Data management app for tracking and storing harvest product information.',
                      'assets/traceability.png',
                    ),
                  ],
                ):
                Row(
                  children: [
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Temple Bliss',
                        'This app is developed in Android Native (Kotlin) and This app gives the most accurate psychic readings from real psychics LIVE on TempleBliss',
                        'assets/templebliss.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Traceability',
                        'This app is developed in in Android Native (Kotlin), This app is a Data management app for tracking and storing harvest product information.',
                        'assets/traceability.png',
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 16),
                         Text(
                          'Jr. Android Developer',
                          style: TextStyle(
                            fontSize:  isMobile ? 21 : 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deftsoft',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: isMobile ? 14 : 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Dec 2020 - Oct 2022',
                        style: TextStyle(color: Colors.amber, fontSize: isMobile ? 14 : 16,),
                      ),
                    ],

                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'At Deftsoft, Developed robust Android applications in collaboration with cross-functional teams. Integrated third-party libraries and APIs for enhanced app functionalities. Gained experience in performance optimization and troubleshooting application issues. ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                ),
                const SizedBox(height: 48),

                // Selected Projects Section
                Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: isMobile ? 21 : 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 24),
                // Project Grid
                isMobile ?  Column(
                        children: [
                        _buildProjectCard(
                        isMobile,
                        'Charmed Visions',
                        'Share your best memories and experience the new style of vision boards. Get your photos out of your phone and on your wrist in minutes not hours with the charmed visions app.',
                        'assets/charemdvisions.png',
                        ),
                        const SizedBox(width: 16),
                        _buildProjectCard(
                        isMobile,
                        'Builder App  ',
                        'Android app built with MVVM architecture, Room Database, and Recycler View',
                        'assets/builder.png',
                        ),
                        ],
                        ):

                Row(
                  children: [
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Charmed Visions',
                        'Share your best memories and experience the new style of vision boards. Get your photos out of your phone and on your wrist in minutes not hours with the charmed visions app.',
                        'assets/charemdvisions.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildProjectCard(
                        isMobile,
                        'Builder App  ',
                        'Android app built with MVVM architecture, Room Database, and Recycler View',
                        'assets/builder.png',
                      ),
                    ),
                  ],
                ),
                _buildEducationSection(isMobile),
              ],
            );
          },

        ),
      ),
    );
  }
  Widget _buildEducationSection(bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 48),
         Text(
          'Education',
          style: TextStyle(
            fontSize: isMobile ? 21:24,
            fontWeight: FontWeight.w600,
            color: Colors.amber,
          ),
        ),
        const SizedBox(height: 24),
        // Education items
        _buildEducationItem(
          isMobile: isMobile,
          degree: 'Bachelor of Technology in Information Technology',
          institution: 'Loveley Professional University, Jalandhar',
          duration: '2008 - 2014',
          description:
          'Graduated with honors, focusing on mobile application development and software engineering principles.',
        ),
        const SizedBox(height: 24),
        _buildEducationItem(
          isMobile: isMobile,
          degree: 'Higher Secondary Education',
          institution: 'DAV Sr Sec School, Mandi (H.P)',
          duration: '2006 - 2008',
          description: 'Completed with Computer Science and Mathematics.',
        ),
      ],
    );
  }

  Widget _buildProjectCard(bool isMobile, String title, String description, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 8.0, bottom: 16.0),
      child: Container(
        width: isMobile ?300 : 245,
        height: 260,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1, // Limit to 1 line
                          overflow:
                          TextOverflow
                              .ellipsis, // Show ... if text overflows
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.white.withOpacity(0.8),
                          size: 18,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          // Add share functionality here
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 50,
                    child: Text(
                      description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity, // Make container take full width
                color: Colors.black45,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildEducationItem({
    required bool isMobile,
    required String degree,
    required String institution,
    required String duration,
    required String description,
  })
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  degree,
                  style: TextStyle(
                    fontSize: isMobile ? 14:20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                institution,
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: isMobile ? 13:16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                duration,
                style: TextStyle(color: Colors.amber, fontSize: isMobile ? 14:16),
              ),

              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: isMobile ? 13:16,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}

