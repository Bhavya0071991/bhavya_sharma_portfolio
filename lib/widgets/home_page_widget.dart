import 'package:flutter/material.dart';

import '../main.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});


  @override
  Widget build(BuildContext context) {

   return Stack(
     children: [
       // Background Image with Fade Effect
       Positioned.fill(
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
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text(
               'MOBILE APP DEVELOPER',
               style: TextStyle(
                 fontSize: 22,
                 fontWeight: FontWeight.bold,
                 color: Colors.amber,
                 fontFamily: 'AlbertSans',
               ),
             ),
             const SizedBox(height: 16),
             const Text(
               'Bhavya Sharma',
               style: TextStyle(
                 fontSize: 48,
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
                 style: Theme.of(context).textTheme.bodyLarge,
               ),
             ),
             const SizedBox(height: 32),
             const ContactInfo(
               email: 'bhavya.007@hotmail.com',
               phone: '7307101259',
               linkedin: 'linkedin.com/in/bhavya-sharma-96411542/',
               location: 'Chandigarh',
             ),
           ],
         ),
       ),
     ],
   );
  }

}

