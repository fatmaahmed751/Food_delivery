import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_app/shared/components/app_fonts.dart';
import 'package:restaurant_app/widgets/custom_text.dart';

class MenuCategoryItem extends StatelessWidget {
  const MenuCategoryItem(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       // Navigator.pushNamed(context, AppRouts.menuCategoryScreen);
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,),
            child: Container(
              width: 270.w,
              height: 70.h,
              decoration: BoxDecoration(
               // color: AppColors.whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 12,
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  title: CustomText(
                    text: title,
                    size: AppFontSize.s22,
                    fontWeight: AppFontWeight.bold,
                  ),
                  subtitle: CustomText(
                    text: subTitle,
                    size: AppFontSize.s12,
                    fontWeight: AppFontWeight.regular,
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
               // backgroundImage: AssetImage(food),
                radius: 40,
              ),
              Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                   // color: AppColors.whiteColor,
                    boxShadow: const [
                      BoxShadow(
                        color:  Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),

                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  //  color: AppColors.primaryColor,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
