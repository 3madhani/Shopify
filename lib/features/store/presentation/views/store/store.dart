import 'package:flutter/material.dart';
import 'package:t_store/core/common/widgets/app_bar/app_bar.dart';
import 'package:t_store/core/common/widgets/products/cart/cart_menu_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: const Text('Store'),
        actions: [
          CartCounterIcon(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
