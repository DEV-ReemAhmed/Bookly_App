import 'package:bookly_app/features/home/presentation/views/widgets/Books_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Custom_Book_Detailes_AppBar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Similar_Books_Section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(children: [
              CustomBookDetailesAppBar(),
              BookDetailsSection(),
              Expanded(child: SizedBox(height: 20)),
              SimilarBooksSection(),
              SizedBox(height: 20),
            ]),
          ),
        ),
      ],
    );
  }
}
