import 'package:flutter/material.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Your Balance is'),
        Text('45,934.00'),
        Text('Today 14 Sep 2022'),
      ],
    );
  }
}
