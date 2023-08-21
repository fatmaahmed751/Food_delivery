import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/data/cubit/states.dart';
import 'package:restaurant_app/screens/home_screen.dart';
import 'package:restaurant_app/screens/more_screen.dart';
import 'package:restaurant_app/screens/offers_screen.dart';
import 'package:restaurant_app/screens/profile_screen.dart';
import 'package:restaurant_app/widgets/menu_view.dart';



class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);


//CurrentBottomNavIndex
  int bottomNavCurrentIndex = 0;

//List of Item in TabBar
  List<String> items = [
    'Menu',
    'Offers',
    ' ',
    'Profile',
    'More',
  ];

  List<Widget> bottomScreens = [
    const MenuView(),
    const OffersScreen(),
    const HomeScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ];

  //BottomNav
  void changeBottomNav(int index) {
    bottomNavCurrentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}
