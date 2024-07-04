import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
children:[
  Padding(
    padding:EdgeInsets.symmetric(horizontal:10),
    child:Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children:[
        Text(
          "Upcoming Movies",
          style:TextStyle(
            color:Colors.white,
            fontSize: 25,
            fontWeight:FontWeight.w500,

          ),
        ),
        Text(
          "See all",
          style:TextStyle(
            color:Colors.white54,
            fontSize:16,


          ),
        ),
      ],
    ),
  ),


  SizedBox(height:15),


      SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Row(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          Padding(
            padding:EdgeInsets.only(left:10),
            child:ClipRRect(
              borderRadius:BorderRadius.circular(15),
              child:Image.network('https://bgr.com/wp-content/uploads/2022/10/ant-man-and-the-wasp-quantumania-trailer-1-15.jpg?quality=82&strip=all&w=1020&h=574&crop=1',
                height:180,
                width:300,
                fit:BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width:10),
    Padding(
    padding:EdgeInsets.only(left:10),
    child:ClipRRect(
    borderRadius:BorderRadius.circular(15),
       child:Image.network('https://images.news18.com/ibnlive/uploads/2019/08/Star-Wars-The-Rise-of-Skywalker.jpg?impolicy=website&width=360&height=240',
    height:180,
    width:300,
    fit:BoxFit.cover,
    )  ,
    ),

    ),

    SizedBox(width:10),
    Padding(
    padding:EdgeInsets.only(left:10),
    child:ClipRRect(
    borderRadius:BorderRadius.circular(15),
      child:Image.network("https://musicart.xboxlive.com/7/8ac41100-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080",
    height:180,
    width:300,
    fit:BoxFit.cover,
    ),
    ),
    ),

          SizedBox(width:10),
          Padding(
            padding:EdgeInsets.only(left:10),
            child:ClipRRect(
              borderRadius:BorderRadius.circular(15),
              child:Image.network("https://4.bp.blogspot.com/--T5Q8eZkTM4/VvAFNidrwQI/AAAAAAAAA_U/a-xl_3NrU7on1ygTQLbdJULcnbDrnyKbw/s1600/romeo-and-juliet-dvd-bluray.jpg",
                height:180,
                width:300,
                fit:BoxFit.cover,
              ),
            ),
          ),


          SizedBox(width:10),
          Padding(
            padding:EdgeInsets.only(left:10),
            child:ClipRRect(
              borderRadius:BorderRadius.circular(15),
              child:Image.network("https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABXUF3CTV6uOBZt4bNtkHEPX2gR79zHJ3wNIr61xkTmnXTxXvZcaIumfckQGtmv6AhpgB6mZnt77kP3uQMzqIv47aWC0lZsBgaJOj.jpg?r=f64",
                height:180,
                width:300,
                fit:BoxFit.cover,
              ),
            ),
          ),

          SizedBox(width:10),
          Padding(
            padding:EdgeInsets.only(left:10),
            child:ClipRRect(
              borderRadius:BorderRadius.circular(15),
              child:Image.network("https://i.ebayimg.com/images/g/zx8AAOSw11tlUVpN/s-l1200.jpg",
                height:180,
                width:300,
                fit:BoxFit.cover,
              ),
            ),
          ),







      SizedBox(width:10),
             Padding(
               padding:EdgeInsets.only(left:10),
              child:  ClipRRect(
                  borderRadius:BorderRadius.circular(15),
                  child:  Image.network("https://images3.alphacoders.com/132/thumb-1920-1324815.jpg",
                    height:180,
                    width:300,
                    fit:BoxFit.cover,
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    );
  }
}