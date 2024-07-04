import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5), // Add some spacing between the two lines
              Text(
                "can have a positive emotional impact, provide enjoyment and stress reduction"

                    ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),
        ),

          ClipRRect(
               borderRadius:BorderRadius.circular(10),
               child:Image.network("https://ca-times.brightspotcdn.com/dims4/default/8bfe240/2147483647/strip/true/crop/3000x890+0+0/resize/1200x356!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Ff1%2F39%2Fc4e197bc2e96173d9482982a4343%2Fc25470dd2a4646eeae5314887896e7db",
               height:300,
                 width:double.infinity ,

               ),
             ),
 ],

    );




  }
}