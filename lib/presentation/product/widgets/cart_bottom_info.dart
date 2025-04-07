import 'package:flutter/material.dart';

class CartBottomInfo extends StatelessWidget {
  final double totalPrice;

  const CartBottomInfo({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Łączna kwota: \$${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Zamów')),
        ],
      ),
    );
  }
}
