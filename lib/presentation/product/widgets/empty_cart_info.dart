import 'package:flutter/material.dart';

class EmptyCartInfo extends StatelessWidget {
  const EmptyCartInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Twój koszyk jest pusty.',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
