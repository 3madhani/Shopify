import 'package:flutter/material.dart';

import '../../../../../../core/common/widgets/products/cart/add_remove.dart';
import '../../../../../../core/common/widgets/products/cart/cart_item.dart';
import '../../../../../../core/common/widgets/texts/product_price_text.dart';
import '../../../../../../core/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButton)
            const SizedBox(height: AppSizes.spaceBtwSections),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    ProductQuantityWithAddRemove(),
                  ],
                ),
                ProductPriceText(price: '256'),
              ],
            )
        ],
      ),
      separatorBuilder: (_, __) =>
          const SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 2,
    );
  }
}
