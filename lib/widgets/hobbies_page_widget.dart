import 'package:flutter/material.dart';

import '../main.dart';

class HobbiesPageWidget extends StatelessWidget {
  const HobbiesPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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

