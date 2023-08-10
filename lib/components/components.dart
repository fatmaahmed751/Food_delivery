import 'package:flutter/material.dart';

Widget orangeButton({
  required String text,
  required Function function,
}) =>
    InkWell(
      onTap:(){ function;},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.all(8.0),
        width: 307,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          // const Color.fromRGBO(252,96 ,17 ,80 ) ,
          borderRadius: BorderRadius.circular(100.0),
        ),
        clipBehavior: Clip.hardEdge,
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );

Widget funText({
  required String text,
  required Function function,
  required double fontSize,
  required FontWeight fontWeight,
}) =>
    TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
    );
Widget defaultButton({
  required String text,
  required Color color,
  required Color textColor,
  required Function function,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      width: 307,
      height: 50,
      decoration: BoxDecoration(
          color:color,
          //  const Color.fromRGBO(252,96 ,17 ,80 ) ,
          border: Border.all(
            width: 1.0,
            color:
            const Color.fromRGBO(252, 96, 17, 80),
          ),
          borderRadius: BorderRadius.circular(25)),
      clipBehavior: Clip.hardEdge,
      child: TextButton(
        onPressed: function(),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 15),
        ),
      ),
    );

Widget mainText() => Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Meal',
          style: TextStyle(
            //letterSpacing: 2.0,
            // wordSpacing: 10.0,
              fontWeight: FontWeight.w900,
              fontSize: 35,
              color: Colors.deepOrangeAccent,
              fontFamily: "Cabin"),
        ),
        SizedBox(
          width: 9,
        ),
        Text(
          'Monkey',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.black54,
              fontFamily: "Cabin"),
        ),
      ],
    ),
    const SizedBox(
      height: 5,
    ),
    const Text(
      'FOOD DELIVERY',
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 13,
          color: Color.fromRGBO(124, 125, 126, 106),
          fontFamily: "Cabin"),
    ),
    const SizedBox(
      height: 10,
    ),
  ],
);

Widget defaultContainer() => Container(
  width: 375,
  height: 430,
  child: Stack(alignment: Alignment.bottomCenter,
    children: [
      Align(
        alignment: Alignment.topCenter,
        child: Card(
          child:Container(
            width: 375,
            height: 382,
            decoration:  BoxDecoration(
              color: Colors.deepOrangeAccent,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(60),
          boxShadow: const [
            BoxShadow(
              blurRadius: 15.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.transparent,
            //  backgroundColor: Colors.white.withOpacity(0.9),
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.white38.withOpacity(0.9),
              child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                  AssetImage("assets/images/download.png")),
            ),
          ),
        ),
      ),


    ],
  ),

);

Widget secondText() => Container(
  padding: const EdgeInsets.all(8.0),
  width: 272,
  height: 58,
  child: const Align(
    alignment: Alignment.center,
    child: Text(
      'Discover the best foods from over 1,000 restaurants and fast delivery'
          'to your doorstep',
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          height: 1.1,
          wordSpacing: 5.0,
          fontWeight: FontWeight.w600,
          fontSize: 13,
          color: Color.fromRGBO(124, 125, 126, 106),
          fontFamily: "Metropolis"),
    ),
  ),
);

Widget defaultDivider() => Container(
  width: 120,
  height: 7,
  decoration: BoxDecoration(
      color: Colors.black54, borderRadius: BorderRadius.circular(100)),
);

Widget defaultFormField({
  required String hitText,
  required TextEditingController controller,
  required TextInputType type,
  String? Function(String?)? validator,
}) =>
    Container(
      width: 300,
      height: 53,
      // padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200), color: Colors.blueGrey[50]),
      child: TextFormField(
        textAlign: TextAlign.justify,
        validator: validator,
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hitText,
          contentPadding: EdgeInsets.only(left: 25),
          hintStyle: TextStyle(
            decorationStyle: TextDecorationStyle.double,
            color: Colors.grey[400],
          ),

          //fillColor: Colors.grey[300],
        ),
      ),
    );

Widget screenText({
  required String text,
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
}) =>
    Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: Color(0xff4a4b4d)),
    );

Widget screenSubText({
  required String text,
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
}) =>
    Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );

Widget secureText() => Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12), color: Colors.grey[300]),
  child: Center(
    child: Text(
      '*',
      style: TextStyle(color: Colors.black54, fontSize: 20),
    ),
  ),
);
Widget defaultAppBar({
  required String appTitle,
})=> AppBar(
  elevation: 0.0,
  backgroundColor: Colors.white,
  title: Text(appTitle,
    textAlign: TextAlign.left,
    style: TextStyle(
        fontSize: 18,
        color: Color(0xff4A4B4D),
        fontWeight: FontWeight.w400,
        fontFamily: 'Metropolis'
    ), ),
  actions: [
    IconButton(
        iconSize: 22,
        onPressed: (){},
        icon:Image(image:AssetImage('assets/images/cart.png') ,)),
  ],
);

Widget greyContainer()=>Container(
  width: 333,
  height:45 ,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      color: Color(0xfff2f2f2)
  ),
  child: Row(
    children: [
      IconButton(onPressed: (){},
        icon: Image(image: AssetImage('assets/images/search.png'),),),
      Text('search food',
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffB6B7B7)
        ),)
    ],
  ),
);

Widget moreScreenContainer({
  required String image,
  required String text,
  required Function function,
})=>Container(
  width: 333,
  height: 75,
  decoration: BoxDecoration(
    color:Colors.blueGrey[50],
    //borderRadius: BorderRadius.circular(50)
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffD8D8D8),
              borderRadius: BorderRadius.circular(30)
          ),
          child: Image(image:AssetImage(image)),
        ),
        SizedBox(width: 10,),
        Text(text,
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff4A4B4D)
          ),),
        Spacer(
        ),
        IconButton(onPressed: (){
          function();
        }, icon: Icon(Icons.arrow_forward_ios_rounded,
          size: 21,),
          color: Color(0xff7C7D7E),
        )

      ],
    ),
  ),
);