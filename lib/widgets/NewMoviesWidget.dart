import 'package:flutter/material.dart';

class NewMoviesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MovieCard(
                imageUrl:
                'https://hips.hearstapps.com/hmg-prod/images/amazing-spider-man-2-poster-647e2ebe578a6.jpeg',
                title: "Movie Title 0",
                genre: "Action/Adventure",
                rating: 8.5,
              ),
              MovieCard(
                imageUrl:
                'https://i.ebayimg.com/images/g/awAAAOSwSzJjGx7b/s-l1200.webp',
                title: "Movie Title 1",
                genre: "romantic/drama",
                rating: 9.0,
              ),
              MovieCard(
                imageUrl:
                'https://images1.wionews.com/images/wion/900x1600/2023/6/12/1686565320286_Untitleddesign20230612T155153.389.png',
                title: "Movie Title 2",
                genre: "zombie",
                rating: 7.2,
              ),
              MovieCard(
                imageUrl:
                'https://m.media-amazon.com/images/I/51YXE4TJD6L._AC_UF894,1000_QL80_.jpg',
                title: "Movie Title 3",
                genre: "vagueness",
                rating: 7.6,
              ),
              MovieCard(
                imageUrl:
                'https://i.pinimg.com/736x/8b/70/17/8b701706818713fc724b4d71e449e952.jpg',
                title: "Movie Title 4",
                genre: "Super Heros",
                rating: 8.2,
              ),
              MovieCard(
                imageUrl:
                'https://greenhouse.hulu.com/app/uploads/sites/11/19170_program_tile_horizontal.jpg',
                title: "Movie Title 5",
                genre: "War",
                rating: 8.5,
              ),
              MovieCard(
                imageUrl:
                'https://thescriptlab.com/wp-content/uploads/2022/06/Crime-Pays-The-Original-Gangsters_TSL.jpg',
                title: "Movie Title 6",
                genre: "Crime",
                rating: 8.9,
              ),
              // Add more MovieCard widgets as needed
            ],
          ),
        ),
      ],
    );
  }
}

class MovieCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final double rating;

  MovieCard({
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,"moviePage");
      },
      child: Container(
        width: 191,
        height: 277,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Color(0xFF292B37),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF292B37).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                height: 170,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    genre,
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 5),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}