import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisata_candi1/models/candi.dart';
import 'package:wisata_candi1/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada kontruktor
  final Candi candi;

  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO: 6. Implementasi routing ke DetailScreen

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(candi:candi),
          ),
        );
      },
      child: Card(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32,
          ),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100]?.withOpacity(0.8),
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back))
          ),
        ),
      ),
    );
 

  }
}