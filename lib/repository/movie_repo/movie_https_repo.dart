import 'package:flutter_bloc_project/model/model_model/movie_model.dart';
import 'package:flutter_bloc_project/repository/movie_repo/movie_repo.dart';

import '../../config/api_url.dart';
import '../../data/network/network_services_api.dart';

class MovieHttpRepo implements MovieRepo {
  final _apiService = NetworkServicesApi();
  @override
  Future<MovieModel> fetchMoviesList(int pageNumber) async {
    final response =
        await _apiService.getApi(ApiUrl.movieUrl + pageNumber.toString());
    print(response);
    return MovieModel.fromJson(response);
  }
}
