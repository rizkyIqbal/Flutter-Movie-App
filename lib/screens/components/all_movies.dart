import 'package:flutter/material.dart';
import 'package:flutter_movie_app/models/movies_model.dart';
import 'package:flutter_movie_app/screens/details/details_screen.dart';
import 'package:flutter_movie_app/screens/components/movies_card.dart';

import '../../../constants.dart';
import 'sectiontitle.dart';

class AllMovies extends StatelessWidget {
  const AllMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "All Movies",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  demo_movies.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: MoviesCard(
                          image: demo_movies[index].image,
                          title: demo_movies[index].title,
                          genre: demo_movies[index].genre,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsScreen(data: demo_movies[index]),
                                ));
                          },
                        ),
                      ))),
        ),
      ],
    );
  }
}
