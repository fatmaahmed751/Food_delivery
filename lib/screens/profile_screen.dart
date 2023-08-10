import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_app/components/components.dart';
import 'package:restaurant_app/widgets/custom_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confiemPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<HomeCubit, HomeState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     var cubit = HomeCubit.get(context);
    //     var bottomNavCurrentIndex = cubit.bottomNavCurrentIndex;
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(
                  title: 'Profile',
                ),
                 Center(
                    child: CircleAvatar(
                        radius: 50,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children:[ Image(
                              image: AssetImage('assets/images/Logo.png')),
                            IconButton(onPressed: (){}, icon:Icon( Icons.camera_alt_outlined))
                       ] ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_outlined,
                          color: Colors.deepOrange,
                        )),
                    const Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                screenSubText(
                    text: 'Hi there Emilia!',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff4A4B4D)),
                const SizedBox(
                  height: 10,
                ),
                screenSubText(
                    text: 'Sign out',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff7C7D7E)),
                const SizedBox(
                  height: 15,
                ),
                defaultFormField(
                    hitText: 'Name',
                    type: TextInputType.text,
                    controller: nameController),
                defaultFormField(
                    hitText: 'Email',
                    type: TextInputType.text,
                    controller: emailController),
                defaultFormField(
                    hitText: 'Mobile No',
                    type: TextInputType.text,
                    controller: phoneController),
                defaultFormField(
                    hitText: 'Address',
                    type: TextInputType.text,
                    controller: addressController),
                defaultFormField(
                    hitText: 'Password',
                    type: TextInputType.text,
                    controller: passwordController),
                defaultFormField(
                    hitText: 'Confirm password',
                    type: TextInputType.text,
                    controller: confiemPasswordController),
                orangeButton(text: 'Save',function:(){},),
                /*IndexedStack(
          index: bottomNavCurrentIndex,
          children: cubit.bottomScreens,
      ),*/
              ],
            ),
          ),
          /* backgroundColor: AppColors.backgroundColor,
        floatingActionButton: FloatingActionButton(
    backgroundColor: bottomNavCurrentIndex == 2
        ? AppColors.primaryColor
        : AppColors.labelColor,
    foregroundColor: Colors.white,
    onPressed: () {
      cubit.changeBottomNav(2);
    },
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SvgPicture.asset(iconHome),
    ),
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: const CircularNotchedRectangle(),
    notchMargin: 12,
    elevation: 30,
    // height: 70,
    child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.labelColor,
      onTap: (index) {
        cubit.changeBottomNav(index);
      },
      currentIndex: bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconMenu,
            color: cubit.bottomNavCurrentIndex == 0
                ? AppColors.primaryColor
                : AppColors.labelColor,
          ),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconShopping,
            color: cubit.bottomNavCurrentIndex == 1
                ? AppColors.primaryColor
                : AppColors.labelColor,
          ),
          label: 'Offers',
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.circle), label: ''),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconProfile,
            color: cubit.bottomNavCurrentIndex == 3
                ? AppColors.primaryColor
                : AppColors.labelColor,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            iconMore,
            color: cubit.bottomNavCurrentIndex == 4
                ? AppColors.primaryColor
                : AppColors.labelColor,
          ),
          label: 'More',
        ),
      ],
    ),
        ),*/
        );


  }
}
