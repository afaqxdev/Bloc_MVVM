part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class MovieFetchEvent extends MovieEvent {
  final int page;

  MovieFetchEvent({this.page = 1});

  @override
  List<Object> get props => [page];
}
