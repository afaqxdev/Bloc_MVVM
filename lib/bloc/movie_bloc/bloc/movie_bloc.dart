import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_project/data/response/api_response.dart';
import 'package:flutter_bloc_project/model/model_model/movie_model.dart';
import 'package:flutter_bloc_project/repository/movie_repo/movie_repo.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieRepo movieRepo;
  int currentPage = 0;
  MovieBloc({required this.movieRepo})
      : super(MovieState(movieList: ApiResponse.loadding())) {
    on<MovieFetchEvent>(fetchMovieListApi);
  }

  Future<void> fetchMovieListApi(
      MovieFetchEvent event, Emitter<MovieState> emit) async {
    currentPage = event.page;
    await movieRepo.fetchMoviesList(event.page).then((value) {
      emit(state.copyWith(movieList: ApiResponse.complete(value)));
    }).onError(
      (error, stackTrace) {
        emit(state.copyWith(movieList: ApiResponse.error(error.toString())));
      },
    );
  }
}
