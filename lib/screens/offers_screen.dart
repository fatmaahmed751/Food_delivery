import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/custom_app_bar.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CustomAppBar(
            title: 'Menu',
          ),
        ]
    );
  }
}
