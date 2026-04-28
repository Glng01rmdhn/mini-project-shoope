import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 40, 12, 10),
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Row(
        children: [
          // SEARCH BAR
          Expanded(
            child: Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey, size: 20),
                  SizedBox(width: 6),

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari produk...",
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ),
                  ),

                  Icon(Icons.camera_alt_outlined,
                      color: Colors.grey, size: 20),
                ],
              ),
            ),
          ),

          SizedBox(width: 10),

          // ICON KERANJANG
          Icon(Icons.shopping_cart, color: Colors.white),

          SizedBox(width: 10),

          // ICON CHAT
          Icon(Icons.chat_bubble_outline, color: Colors.white),
        ],
      ),
    );

  }
}