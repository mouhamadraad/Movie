import 'package:flutter/material.dart';
import 'package:mobile/widgets/MoviePageButtons.dart';
import 'package:mobile/widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          Opacity(
            opacity:0.4,
            child:Image.network("https://www.intofilm.org/intofilm-production/9627/scaledcropped/1212x682/resources/9627/into-film-plus-films-page-header-08-22.jpg",
              height:200,
              width:double.infinity,
              fit:BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child:SafeArea(
              child:Column(
                children:[
                  Padding(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:25),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        InkWell(
                          onTap:(){
                            Navigator.pop(context);
                          },
                          child:Icon(Icons.arrow_back,
                              color:Colors.white,
                              size:30
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Navigator.pop(context);
                          },
                          child:Icon(Icons.favorite_border,
                              color:Colors.white,
                              size:30
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:60),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(20),
                              boxShadow:[
                                BoxShadow(
                                  color:Colors.blueGrey.withOpacity(0.5),
                                  spreadRadius:1,
                                  blurRadius:8,
                                ),
                              ]
                          ),
                          child:ClipRRect(
                            borderRadius:BorderRadius.circular(20),
                            child:Image.network("https://www.visitpensacolabeach.com/wp-content/uploads/2023/08/cinemasbanner_1920x845_V3-1024x451.jpg",
                              height:190,
                              width:180,
                            )    ,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right:50,top:70),
                          height:80,
                          width:80,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(40),
                            color:Colors.red,
                            boxShadow:[
                              BoxShadow(
                                color:Colors.red.withOpacity(0.5),
                                spreadRadius:2,
                                blurRadius:8,

                              ),
                            ],


                          ),
                          child:Icon(
                            Icons.play_arrow,
                            color:Colors.white,
                            size:60,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:30),
                  MoviePageButtons(),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical:20,horizontal:10),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children:[
                        Text(
                          " Welcome ",
                          style:TextStyle(
                            color:Colors.white,
                            fontSize:30,
                            fontWeight:FontWeight.w500,

                          ),
                        ),
                        SizedBox(height:15),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  RecommendWidget(),
                ],

              ),
            ),
          ),
        ],
      ),
      //  bottomNavigationBar: CustomNavBar(),
    );

  }}