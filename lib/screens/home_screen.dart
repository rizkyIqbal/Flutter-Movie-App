import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/screens/components/all_movies.dart';
import 'package:flutter_movie_app/screens/components/categories.dart';
import 'package:flutter_movie_app/screens/components/popular_movies.dart';
import 'package:flutter_movie_app/screens/components/sectiontitle.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(width: defaultPadding / 2),
          Text("15/2 New Texas", style: Theme.of(context).textTheme.subtitle2),
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const Text("Find Your Movies!",
                style: TextStyle(color: Colors.white54, fontSize: 18)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            //const SizedBox(height: defaultPadding),
            const SizedBox(height: defaultPadding),
            const AllMovies(),
            const SizedBox(height: defaultPadding),
            const PopularMovies(),
          ],
        ),
      ),
    );
  }
}
