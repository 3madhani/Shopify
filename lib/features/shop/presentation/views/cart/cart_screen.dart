import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../checkout/checkout_screen.dart';
import 'widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom: AppSizes.defaultSpace,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: ()=>Get.to(()=>const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}