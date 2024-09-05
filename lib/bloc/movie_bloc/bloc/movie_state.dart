part of 'movie_bloc.dart';

class MovieState extends Equatable {
  const MovieState({required this.movieList});
  final ApiResponse<MovieModel> movieList;

  MovieState copyWith({
    ApiResponse<MovieModel>? movieList,
  }) {
    return MovieState(movieList: movieList ?? this.movieList);
  }

  @override
  List<Object?> get props => [movieList];
}
