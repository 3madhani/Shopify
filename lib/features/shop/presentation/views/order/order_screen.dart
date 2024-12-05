import 'package:flutter/material.dart';
import 'package:shopify/core/common/widgets/app_bar/app_bar.dart';
import 'package:shopify/features/shop/presentation/views/order/widgets/order_list.dart';

import '../../../../../core/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
