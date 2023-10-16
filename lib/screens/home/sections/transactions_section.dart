import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../models/models.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({super.key});

  final List<Transaction> transactions = const [
    Transaction(
      date: 'Sep 12, 2022',
      time: '09:31 AM',
      totalAmount: 126,
      transactionName: 'Netflix',
      imagePath: 'assets/images/netflix.png',
    ),
    Transaction(
      date: 'Sep 12, 2022',
      time: '09:31 AM',
      totalAmount: 126,
      transactionName: 'Netflix',
      imagePath: 'assets/images/apple.png',
    ),
    Transaction(
      date: 'Sep 12, 2022',
      time: '09:31 AM',
      totalAmount: 126,
      transactionName: 'Netflix',
      imagePath: 'assets/images/instagram.png',
    ),
  ];

  Widget cardTransaction(Transaction item) {
    return Card(
        margin: const EdgeInsets.only(bottom: 20),
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.2)),
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.transactionName),
                  const SizedBox(height: 8),
                  Text(item.date),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(item.totalAmount.toString()),
                const SizedBox(height: 8),
                Text(item.time),
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          // height: 0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.redAccent,
          ),
        ),
        Positioned(
          child: Container(
            width: MediaQuery.of(context).size.width - 60,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
          ),
        ),
        Positioned(
          top: 45,
          child: Container(
            width: MediaQuery.of(context).size.width - 50,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.yellow,
            ),
          ),
        ),
        Positioned(
          top: 90,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Transactions'),
                    Container(
                      // height: 100,
                      // width: MediaQuery.of(context).size.width - 24,
                      child: null,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
