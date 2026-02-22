import 'package:flutter/material.dart';
import 'package:shopy_shop/pages/cart_page.dart';
import 'package:shopy_shop/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  final VoidCallback toggleTheme;

  const HomePage({super.key, required this.toggleTheme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  final List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      /// 🔥 ELITE APP BAR
      appBar: AppBar(
        elevation: 0,
        title: Text(
          currentPage == 0 ? "Shopy Shop" : "Your Cart",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
            onPressed: widget.toggleTheme,
            icon: const Icon(Icons.dark_mode),
          ),
          const SizedBox(width: 8),
        ],
      ),

      /// 🔥 SMOOTH PAGE TRANSITION
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        child: IndexedStack(
          key: ValueKey(currentPage),
          index: currentPage,
          children: pages,
        ),
      ),

      /// 💎 FLOATING PREMIUM NAV BAR
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _navItem(Icons.home, 0),
              _navItem(Icons.shopping_cart, 1),
            ],
          ),
        ),
      ),
    );
  }

  /// 🔥 ELITE NAV ITEM WIDGET
  Widget _navItem(IconData icon, int index) {
    final bool isSelected = currentPage == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentPage = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 28,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
