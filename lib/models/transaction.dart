// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Transaction extends Equatable {
  final String date;
  final String time;
  final int totalAmount;
  final String transactionName;
  final String imagePath;

  const Transaction({
    required this.date,
    required this.time,
    required this.totalAmount,
    required this.transactionName,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
        date,
        time,
        totalAmount,
        transactionName,
        imagePath,
      ];
}
