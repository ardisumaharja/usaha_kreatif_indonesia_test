import 'dart:math';
import 'package:flutter/material.dart';
import 'package:usaha_kreatif_indonesia/screens/screens.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static const route = '/';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  double getHighDimension(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.1 +
        Random().nextDouble() *
            (MediaQuery.of(context).size.height * 0.25 -
                MediaQuery.of(context).size.height * 0.1);
  }

  final List<int> list = [1, 2, 3, 4, 5];

  Widget statisticView(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: list.asMap().entries.map((e) {
          return Container(
            height: e.value == 4
                ? (MediaQuery.of(context).size.height * 0.3)
                : getHighDimension(context),
            width: (MediaQuery.of(context).size.width - 24) / 5 - 15,
            child: null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.withOpacity(0.3),
            ),
          );
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            statisticView(context),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find way to manage your finance',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'The most transparent & Security Bank ever',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: null,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber),
                      child: const Center(
                        child: Text('Get Started'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey),
                  child: const Center(child: Icon(Icons.qr_code_scanner)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
