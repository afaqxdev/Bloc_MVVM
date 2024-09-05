import 'package:flutter_bloc_project/model/model_model/movie_model.dart';

abstract class MovieRepo {
  Future<MovieModel> fetchMoviesList(int pageNumber);
}
