import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
borderRadius:BorderRadius.only(
  topLeft:Radius.circular(25),
  topRight:Radius.circular(25),
),
      ),
      child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:[
          InkWell(
        onTap: (){
          Navigator.pushNamed(context,"/");
        },
        child:Icon(
          Icons.home,
          size:30,
          color:Colors.white,
        ),
    ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context,"categoryPage");
            },
            child:Icon(
              Icons.category,
              size:30,
              color:Colors.white,
            ),
          ),
          InkWell(
            onTap: (){},
            child:Icon(
              Icons.favorite_border,
              size:30,
              color:Colors.white,
            ),
          ),
          InkWell(
            onTap: (){},
            child:Icon(
              Icons.person,
              size:30,
              color:Colors.white,
            ),
          ),

    ],
        ),

    );
  }
}
