import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});


  @override
  Widget build(BuildContext context) {

   return Stack(
     children: [
       // Background Image with Fade Effect
       Positioned(
         bottom: 0,
         top: 0,
         left: 10,
         right: 0,
         child: Image.asset(
           'assets/png_bhavya.png',
           fit: BoxFit.contain,
         ),
       ),
       // Content
       Padding(
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
                   'MOBILE APP DEVELOPER',
                   style: TextStyle(
                     fontSize: (isMobile)?18:22,
                     fontWeight: FontWeight.bold,
                     color: Colors.amber,
                     fontFamily: 'AlbertSans',
                   ),
                 ),
                 const SizedBox(height: 16),
                  Text(
                   'Bhavya Sharma',
                   style: TextStyle(
                     fontSize: (isMobile)?38:48,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontFamily: 'AlbertSans',
                   ),
                 ),
                 const SizedBox(height: 16),
                 SizedBox(
                   width: 550,
                   child: Text(
                     '4 years 2 months of experience in Mobile App Development\nSpecializing in Android Native (Kotlin) and Flutter (Dart). Skilled in working with cross-functional teams, ensuring seamless collaboration to deliver high-quality and scalable applications within deadlines. ',
                     style: (isMobile)? Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white) :Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                   ),
                 ),
                 const SizedBox(height: 32),
                 (isMobile)?
                     const ContactInfoMobile( email: 'bhavya.007@hotmail.com',
                       phone: '7307101259',
                       linkedin: 'linkedin.com/in/bhavya-sharma-96411542/',
                       location: 'Chandigarh',)
                     :
                 const ContactInfo(
                   email: 'bhavya.007@hotmail.com',
                   phone: '7307101259',
                   linkedin: 'linkedin.com/in/bhavya-sharma-96411542/',
                   location: 'Chandigarh',
                 ),
               ],
             );
           },

         ),
       ),
     ],
   );
  }

}

class ContactInfo extends StatelessWidget {
  final String email;
  final String phone;
  final String linkedin;
  final String location;

  const ContactInfo({
    super.key,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildContactRow(Icons.email, email),
            const SizedBox(width: 150),
            _buildContactRow(Icons.phone, phone),
          ],
        ),

        const SizedBox(height: 25),
        Row(
          children: [
            _buildContactRow(Icons.contact_page, linkedin),
            const SizedBox(width: 40),
            _buildContactRow(Icons.location_on, location),
          ],
        ),
      ],
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.amber, size: 20),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }


}
class ContactInfoMobile extends StatelessWidget {
  final String email;
  final String phone;
  final String linkedin;
  final String location;

  const ContactInfoMobile({
    super.key,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildContactRow(Icons.email, email),
        const SizedBox(height: 25),
        _buildContactRow(Icons.phone, phone),
        const SizedBox(height: 25),
        _buildContactRow(Icons.contact_page, linkedin),
        const SizedBox(height: 25),
        _buildContactRow(Icons.location_on, location),
      ],
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.amber, size: 20),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }


}

