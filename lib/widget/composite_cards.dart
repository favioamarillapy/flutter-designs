import 'dart:ui';

import 'package:flutter/material.dart';

class CompositeCardsWidget extends StatelessWidget {
  const CompositeCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(Icons.border_all, Colors.blue, "General"),
            _SingleCard(Icons.car_rental, Colors.indigo, "Transport"),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(Icons.shop, Colors.purple, "Shopping"),
            _SingleCard(Icons.cloud, Colors.orange, "Bill"),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(Icons.movie, Colors.cyan, "Entertaiment"),
            _SingleCard(Icons.local_grocery_store, Colors.green, "Grocery"),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const _SingleCard(this.icon, this.color, this.title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
