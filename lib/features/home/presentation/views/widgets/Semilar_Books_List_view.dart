import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                imageUrl:
                    'https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/09/Screen-Shot-2021-09-21-at-10.28.12-AM.png?resize=484%2C632&quality=80&ssl=1',
              ),
            );
          }),
    );
  }
}
