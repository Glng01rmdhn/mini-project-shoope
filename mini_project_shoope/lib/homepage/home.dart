import 'package:flutter/material.dart';
import '../components/api_service.dart';
import '../components/product_card.dart';
import '../components/appbar.dart';
import '../components/bottom_navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    var hasil = await ApiService.getProducts();
    setState(() {
      data = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color(0xFFF5F5F5),

  body: Column(
    children: [
      Appbar(),

      Expanded(
        child: data.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: (data.length / 2).ceil(),
                itemBuilder: (context, index) {
                  int i = index * 2;

                  return Row(
                    children: [
                      ProductCard(item: data[i]),
                      if (i + 1 < data.length)
                        ProductCard(item: data[i + 1]),
                    ],
                  );
                },
              ),
      ),
    ],
  ),

  bottomNavigationBar: BottomNavbar(), // 🔥 ini
);
  }
}
