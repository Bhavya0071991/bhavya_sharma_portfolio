import 'package:flutter/material.dart';


class SummaryPageWidget extends StatelessWidget {
  const SummaryPageWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 100.0,
        right: 100.0,
        top: 15.0,
        bottom: 32.0,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          bool isMobile = maxWidth < 600;
          bool isTablet = maxWidth >= 600 && maxWidth < 1024;
          bool isWeb = maxWidth >= 1024;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Summary',
                      style: TextStyle(
                        fontSize: isMobile ? 28 : 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'I am an experienced and detail-oriented Mobile App Developer dedicated to '
                          'creating intuitive and impactful digital experiences. Over the years, I have '
                          'honed my skills in Android Native and Flutter development, always striving to '
                          'balance user needs with business objectives. My passion lies in understanding '
                          'how people interact with mobile applications and crafting solutions that are '
                          'both functional and aesthetically pleasing.',
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'I have collaborated with diverse teams, including developers, marketers, and '
                          'product managers, to bring concepts to life, ensuring seamless integration of '
                          'design and functionality. My development philosophy centers on clean code and '
                          'innovation—placing the user at the heart of every decision while leveraging '
                          'the latest tools and trends to stay ahead in the field.',
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      padding: const EdgeInsets.only(left: 12),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.amber, width: 4),
                        ),
                      ),
                      child: Text(
                        'Driven by a curiosity to learn and improve, I continuously explore new '
                            'tools and methodologies to enhance my work. Whether working on Android '
                            'applications, Flutter interfaces, or cross-platform solutions, I am '
                            'committed to delivering high-quality results that exceed expectations.',
                        style: TextStyle(
                          fontSize: isMobile ? 18 : 23,
                          color: Colors.white,
                          height: 1.3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      )
      ,
    );
  }

}

