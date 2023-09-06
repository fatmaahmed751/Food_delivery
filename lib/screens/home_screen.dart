import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/shared/components/app_colors.dart';
import 'package:restaurant_app/shared/components/app_fonts.dart';
import 'package:restaurant_app/shared/components/components.dart';
import 'package:restaurant_app/widgets/custom_app_bar.dart';
import 'package:restaurant_app/widgets/custom_text.dart';
import 'package:restaurant_app/widgets/popular_restaurant.dart';
import 'package:restaurant_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(
              title: 'Good Morning Fatma!',
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivering to',
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB6B7B7)),
                  ),
                  Row(
                    children: [
                      Text(
                        'Current Location',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.lightGrey),
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down_sharp,
                              size: 30, color: AppColors.kPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SearchBarWidget(),
            Container(
              height: 115,
              // color: Colors.yellow,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        // width: 254,
                        height: 115,
                        // padding: const EdgeInsets.only(left:7),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // textBaseline: TextBaseline.alphabetic,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/order.png',
                              ),
                              height: 95,
                            ),
                            Text('italian')
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 3,
                      ),
                  itemCount: 6),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0,left: 8),
              child: Row(
                children: [
                  CustomText(text:'Popular Restaurant',
                  color: AppColors.blackColor,
                  fontWeight:  AppFontWeight.meduim,
                  size: AppFontSize.s18,),
                  Spacer(),
                  CustomText(text:'View All',
                    color: AppColors.kPrimaryColor,
                    size: AppFontSize.s14,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            PopularRestaurant(),
            SizedBox(
              height:6,
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0,left: 8),
              child: Row(
                children: [
                  CustomText(text:'Recent Items',
                    color: AppColors.blackColor,
                    fontWeight:  AppFontWeight.meduim,
                    size: AppFontSize.s18,),
                  Spacer(),
                  CustomText(text:'View All',
                    color: AppColors.kPrimaryColor,
                    size: AppFontSize.s14,
                  ),
                ],
              ),
            ),
            Container(
              height: 300.h,
              child: ListView.builder(
                physics:const BouncingScrollPhysics(),
                itemBuilder:(context,index)=>Container(
                height: 100,
                padding: const EdgeInsets.only(left: 15),
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                Image(
                image: AssetImage(
                'assets/images/order.png',
                ),
                height: 95,
              ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                    'King Burgers',
                    style:
                    TextStyle(color: Color(0xff4A4B4D), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                        size: 20,
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(
                            color: Colors.deepOrange, fontSize: 12),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '(124 ratings)',
                        style: TextStyle(
                            color: Color(0xff4A4B4D), fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Burger',
                        style: TextStyle(
                            color: Color(0xff4A4B4D), fontSize: 12),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '.Westem Food',
                        style: TextStyle(
                            color: Color(0xff4A4B4D), fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ]
                ),
                ),
                ]
              ),
              ),
                itemCount: 4,
              ),
            )
          ]
      ),
    );
  }
}
