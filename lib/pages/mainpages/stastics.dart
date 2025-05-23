import 'package:flutter/material.dart';
import 'package:pro_counter/components/expense_category_card.dart';

class Stastics extends StatelessWidget {
  const Stastics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('  Statistics',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Text('This month',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                  ),
                ],
              ),
              // Total expense card
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF5B61B9),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Total expense',
                        style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(height: 8),
                    const Text('243,734',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 3734 / 4000,
                            backgroundColor: Colors.white24,
                            color: Colors.amber,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text('244000 per month',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 13)),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Expense Breakdown',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Text('Week',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: const [
                  SizedBox(width: 4),
                  Text(
                    "LIMIT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '24900 / week',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Spending Details
              const Text('Spending Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 4),
              const Text('Your expenses are divided into 6 categories',
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
              const SizedBox(height: 12),
              // Category percentages bar

              const SizedBox(height: 10),
              // Category percentages text
              const SizedBox(height: 18),
              // Expense category cards
              Row(
                children: const [
                  ExpenseCategoryCard(
                    icon: Icons.shopping_cart,
                    color: Colors.blue,
                    title: 'Shop',
                    amount: '-1190',
                  ),
                  SizedBox(width: 12),
                  ExpenseCategoryCard(
                    icon: Icons.directions_bus,
                    color: Colors.pink,
                    title: 'Transport',
                    amount: '-867',
                  ),
                ],
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
