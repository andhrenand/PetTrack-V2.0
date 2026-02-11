import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_track/models/insight_models.dart';
import 'insight_item_card.dart';

class InsightCard extends StatefulWidget {
  const InsightCard({super.key});

  @override
  State<InsightCard> createState() => _InsightCardState();
}

class _InsightCardState extends State<InsightCard> {
  final PageController _controller = PageController();
  late final Timer _timer;
  int _currentIndex = 0;

  final List<InsightModels> insights = [
    InsightModels(
      icon: Icons.pets,
      title: "Today Insight",
      value: "12 Pet Checked",
    ),
    InsightModels(
      icon: Icons.receipt_long,
      title: "Today Insight",
      value: "10 Transactions",
    ),
    InsightModels(
      icon: Icons.account_balance_wallet,
      title: "Today Insight",
      value: "Rp 10.000.000 Income",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      _currentIndex = (_currentIndex + 1) % insights.length;
      _controller.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: PageView.builder(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: insights.length,
        itemBuilder: (context, index) {
          return InsightItemCard(
            item: insights[index],
          );
        },
      ),
    );
  }
}
