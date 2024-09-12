part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFaliure extends FeaturedBooksState {
  final String errMsg;
  FeaturedBooksFaliure(this.errMsg);
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}
