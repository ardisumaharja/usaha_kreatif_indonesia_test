import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.person_2_outlined, size: 50),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome'),
              Text('Tawfikul Emon'),
            ],
          ),
        ),
        Icon(Icons.widgets),
      ],
    );
  }
}
