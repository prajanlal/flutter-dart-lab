import 'package:flutter/material.dart';
import 'package:my_app/pages/cart_page.dart';
import 'package:my_app/widgets/product_list.dart';

class HomePage extends  StatefulWidget {
  const HomePage({super.key});

   final List<String> filters = const [
    'All',
    'Adidas',
    'Nike',
    'Bata',
    'Puma'
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;
  String selectedFilter = 'All';
  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
        ],
      ),
    );
  }
}
       
           
 