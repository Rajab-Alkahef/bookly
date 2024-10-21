import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_searched_books_state.dart';

class FetchSearchedBooksCubit extends Cubit<FetchSearchedBooksState> {
  FetchSearchedBooksCubit(this.searchRepo) : super(FetchSearchedBooksInitial());
  bool searched = false;
  final SearchRepo searchRepo;
  Future<void> fetchSearchedBooks(String name) async {
    emit(FetchSearchedBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(name);
    result.fold((failure) {
      emit(FetchSearchedBooksFailure(failure.errMessage));
    }, (books) {
      searched = true;
      emit(FetchSearchedBooksSuccess(books));
    });
  }
}
