import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/bloc/movie_bloc/bloc/movie_bloc.dart';
import 'package:flutter_bloc_project/main.dart';
import 'package:flutter_bloc_project/utils/enum.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final MovieBloc movieBloc;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    movieBloc = MovieBloc(movieRepo: getit());
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {}
      });

    movieBloc.add(MovieFetchEvent()); // Initial fetch
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("im doing my job");
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Home Page"),
      ),
      body: BlocProvider(
        create: (_) => movieBloc..add(MovieFetchEvent()),
        child: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            final status = state.movieList.status;

            if (status == null) {
              return const Center(
                child: Text(
                  "Movie List is null",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              );
            }

            switch (status) {
              case ApiResponseStatus.loading:
                return const Center(child: CircularProgressIndicator());

              case ApiResponseStatus.error:
                return Center(
                  child: Text(state.movieList.message ?? "Unknown error"),
                );

              case ApiResponseStatus.complete:
                if (state.movieList.data == null ||
                    state.movieList.data!.tvShow.isEmpty) {
                  return const Center(
                    child: Text(
                      "No Data",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  );
                }

                final list = state.movieList.data!.tvShow;
                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          controller: _scrollController,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of columns in the grid
                            crossAxisSpacing: 10.0, // Spacing between columns
                            mainAxisSpacing: 10.0, // Spacing between rows
                            childAspectRatio: 0.75, // Aspect ratio of each item
                          ),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final tvShow = list[index];
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 210,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12)),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                              tvShow.imageThumbnailPath,
                                            ))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      tvShow.name,
                                      style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          15,
                          (index) {
                            int pageIndex = index + 1;
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<MovieBloc>()
                                    .add(MovieFetchEvent(page: pageIndex));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  pageIndex.toString(),
                                  style: TextStyle(
                                    fontSize: pageIndex == movieBloc.currentPage
                                        ? 20.0
                                        : 16,
                                    fontWeight: FontWeight.bold,
                                    color: pageIndex == movieBloc.currentPage
                                        ? Colors.red
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );

              default:
                return const Text(
                  "Unknown state",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                );
            }
          },
        ),
      ),
    );
  }
}
