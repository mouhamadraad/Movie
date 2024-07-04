import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // to go back to the page
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    // Original photo and text
                    buildRow(
                      imageUrl:
                      "https://hips.hearstapps.com/hmg-prod/images/amazing-spider-man-2-poster-647e2ebe578a6.jpeg",
                      text: "Category",
                    ),
                    // Duplicated photos and texts
                    buildRow(
                      imageUrl:
                      "https://i.ebayimg.com/images/g/awAAAOSwSzJjGx7b/s-l1200.webp",
                      text: "Category",
                    ),
                    buildRow(
                      imageUrl:
                      "https://images1.wionews.com/images/wion/900x1600/2023/6/12/1686565320286_Untitleddesign20230612T155153.389.png",
                      text: "Category",
                    ),
                    buildRow(
                      imageUrl:
                      "https://m.media-amazon.com/images/I/51YXE4TJD6L._AC_UF894,1000_QL80_.jpg",
                      text: "Category",
                    ),
                    buildRow(
                      imageUrl:
                      "https://i.pinimg.com/736x/8b/70/17/8b701706818713fc724b4d71e449e952.jpg",
                      text: "Category",
                    ),
                    buildRow(
                      imageUrl:
                      "https://greenhouse.hulu.com/app/uploads/sites/11/19170_program_tile_horizontal.jpg",
                      text: "Category",
                    ),
                    buildRow(
                      imageUrl:
                      "https://thescriptlab.com/wp-content/uploads/2022/06/Crime-Pays-The-Original-Gangsters_TSL.jpg",
                      text: "Category",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow({required String imageUrl, required String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 70,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 23,
          ),
        ],
      ),
    );
  }
}