import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../core/common/widgets/products/cart/coupon_code.dart';
import '../../../../../core/common/widgets/success_screen/success_screen.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../../../../core/utils/constants/image_string.dart';
import '../../../../../core/utils/constants/sizes.dart';
import '../../../../../core/utils/helpers/helper_functions.dart';
import '../../../../../navigation_menu.dart';
import '../cart/widgets/cart_items.dart';
import 'widgets/billing_address.dart';
import 'widgets/billing_amount.dart';
import 'widgets/billing_payment.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // items
            const CartItems(
              showAddRemoveButton: false,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            const CouponCode(),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // billing & payment
            RoundedContainer(
              shadowBorder: true,
              padding: const EdgeInsets.all(AppSizes.md),
              backgroundColor: dark ? AppColors.black : AppColors.white,
              child: const Column(
                children: [
                  // pricing
                  BillingAmountSection(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  // divider
                  Divider(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  // payment method
                  BillingPaymentSection(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  // address
                  BillingAddressSection(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
                image: AppImages.staticSuccessIllustration,
                title: 'Payment Success!',
                subTitle: 'Your item will be shipped soon!',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
