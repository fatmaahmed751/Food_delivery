import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivering to',
                 // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB6B7B7)

                  ),),
                  Text('Current location',
                   // textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black45

                    ),),
                ],
              ),
              Center(
                child: Icon(Icons.arrow_drop_down,
                size: 30,
                color: Color(0xffFC6011),),
              ),
              SizedBox(
                height:10,
              ),
              greyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
