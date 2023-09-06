import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/shared/components/app_colors.dart';
import 'package:restaurant_app/shared/components/app_fonts.dart';
import 'package:restaurant_app/widgets/custom_app_bar.dart';
import 'package:restaurant_app/widgets/custom_app_bar_two.dart';
import 'package:restaurant_app/widgets/custom_text.dart';
import 'package:restaurant_app/widgets/search_bar.dart';

class DessertsScreen extends StatelessWidget {
  const DessertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBarTwo(
            title: 'Desserts',
          ),
          const SearchBarWidget(),
          Container(
            height: 600.h,
            child: ListView.separated(
                itemBuilder: (context, index) => dessertContainer(),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 4,
                    ),
                itemCount: 6),
          )
        ],
      ),
    );
  }

  Widget dessertContainer() => Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            //height: 220.h,
            width: 400.w,
            decoration: BoxDecoration(
                color: Colors.orange,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset(
              'assets/images/choco.jpg',
              height: 193.h,
               fit: BoxFit.cover,
            ),
          ),

          // SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(
                    text: 'French Apple Pie',
                    color: Colors.white,
                    size: AppFontSize.s18,
                    fontWeight: AppFontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: AppColors.kPrimaryColor,
                    ),
                    CustomText(
                      text: '4.9',
                      color: AppColors.kPrimaryColor,
                      size: AppFontSize.s12,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: 'Minute by tuk tuk',
                      color: AppColors.whiteColor,
                      size: AppFontSize.s15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
