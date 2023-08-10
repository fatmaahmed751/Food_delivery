import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/widgets/menu_category_item.dart';
class MenuCategoriesSection extends StatelessWidget {
  const MenuCategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 90.w,
            height: 410.h,
            decoration: BoxDecoration(
               // color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
              children: [
                MenuCategoryItem(title: 'Food',subTitle: '120 items',),
                SizedBox(height: 20.h,),
                MenuCategoryItem(title: 'Beverages',subTitle: '120 items',),
                SizedBox(height: 20.h,),
                MenuCategoryItem(title: 'Desserts',subTitle: '120 items',),
                SizedBox(height: 20.h,),
                MenuCategoryItem(title: 'Promotions',subTitle: '120 items',),

              ]),
        )
      ],
    );
  }
}
