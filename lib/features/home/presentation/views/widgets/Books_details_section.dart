
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Box_Action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_Book_Item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomBookImage(imageUrl:
           'https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/09/Screen-Shot-2021-09-21-at-10.28.12-AM.png?resize=484%2C632&quality=80&ssl=1',),
        ),
        SizedBox(
          height: 0,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 15,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 20),
        const BooksAction(),
      ],
    );
  }
}