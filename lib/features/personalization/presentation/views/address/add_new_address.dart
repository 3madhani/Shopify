import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/common/widgets/app_bar/app_bar.dart';
import '../../../../../core/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(
        title: Text('Add New Address'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Form(
            child: Column(
          children: [
            TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number')),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street')),
                ),
                const SizedBox(width: AppSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal Code')),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City')),
                ),
                const SizedBox(width: AppSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State')),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
            const SizedBox(height: AppSizes.defaultSpace),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            )
          ],
        )),
      ),
    );
  }
}
