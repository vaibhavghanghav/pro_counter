import 'package:flutter/material.dart';
import 'package:pro_counter/components/expense_tem.dart';
import 'stastics.dart';
// import '../../widgets/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      // Home content
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('profile.jpeg'), // Placeholder
                        radius: 22,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Morning',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          Text('Błaszczykowski',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
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
                      const SizedBox(width: 10),
                      // const Icon(Icons.search, size: 28),
                    ],
                  ),
                ],
              ),
              // Expense total card
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF5B61B9),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Expense total',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16)),
                          const SizedBox(height: 8),
                          const Text(
                            '₹ 3,734',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text('+240 than last month',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.pie_chart,
                          color: Colors.white, size: 48),
                    ),
                  ],
                ),
              ),
              const Text('Expense List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 16),
              // Expense List

              ExpenseItem(
                  icon: Icons.shopping_cart,
                  title: 'Shop',
                  subtitle: 'Buy new clothes',
                  amount: '₹ 90'),
              ExpenseItem(
                  icon: Icons.devices_other,
                  title: 'Electronic',
                  subtitle: 'Buy new iphone 14',
                  amount: '-1290'),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),
      appBar: AppBar(
        leading: Icon(Icons.currency_rupee),
        centerTitle: true,
        title: Text("E X P E N Z O"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF5B61B9),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_sharp, size: 32), label: 'Stastics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box, size: 32), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
