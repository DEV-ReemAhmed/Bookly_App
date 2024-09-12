import 'package:bookly_app/features/home/presentation/views/widgets/Book_details_View_Body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: const BookDetailsViewBody()),
    );
  }
}
