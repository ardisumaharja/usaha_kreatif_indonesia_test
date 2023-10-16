import 'package:flutter/material.dart';
import 'package:usaha_kreatif_indonesia/models/transaction.dart';
import 'package:usaha_kreatif_indonesia/screens/home/sections/balance_section.dart';
import 'package:usaha_kreatif_indonesia/screens/home/sections/profile_section.dart';
import 'package:usaha_kreatif_indonesia/screens/home/sections/transactions_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 12, top: 20, right: 12),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileSection(),
            BalanceSection(),
            Expanded(child: TransactionsSection()),
          ],
        ),
      ),
    );
  }
}
