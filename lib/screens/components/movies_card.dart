import 'package:flutter/material.dart';

import '../../../constants.dart';

class MoviesCard extends StatelessWidget {
  const MoviesCard({
    Key? key,
    required this.image,
    required this.title,
    required this.genre,
    required this.press,
  }) : super(key: key);

  final String image, title, genre;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 125,
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        decoration: const BoxDecoration(
            color: defaultCard,
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(
                image,
                height: 190,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: defaultPadding / 2, right: defaultPadding / 2),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding / 4,
                  ),
                  Text(
                    genre,
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: Colors.white54),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
