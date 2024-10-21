part of 'fetch_searched_books_cubit.dart';

sealed class FetchSearchedBooksState extends Equatable {
  const FetchSearchedBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSearchedBooksInitial extends FetchSearchedBooksState {}

final class FetchSearchedBooksLoading extends FetchSearchedBooksState {}

final class FetchSearchedBooksSuccess extends FetchSearchedBooksState {
  final List<BookModel> bookModel;

  const FetchSearchedBooksSuccess(this.bookModel);
}

final class FetchSearchedBooksFailure extends FetchSearchedBooksState {
  final String errMessage;

  const FetchSearchedBooksFailure(this.errMessage);
}
