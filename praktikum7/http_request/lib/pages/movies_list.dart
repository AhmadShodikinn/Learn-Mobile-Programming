import 'package:flutter/material.dart';
import 'package:http_request/pages/movie_detail.dart';
import 'package:http_request/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int? moviesCount;
  List? movies;
  HttpService? service;

  Future initialize() async {
    movies = [];
    movies = await service?.getPopularMovies();
    setState(() {
      moviesCount = movies?.length;
      movies = movies;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
      ),
      body: ListView.builder(
        itemCount: (moviesCount == null) ? 0 : moviesCount,
        itemBuilder: (context, int position) {
          try {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                title: Text(movies?[position].title),
                subtitle: Text(
                  'Rating = ' + movies![position].voteAverage.toString(),
                ),
                leading: Image.network('https://image.tmdb.org/t/p/w500/' +
                    movies![position].posterPath),
                onTap: () {
                  //ikut jobsheet
                  // MaterialPageRoute route = MaterialPageRoute(
                  //     builder: (_) => MovieDetail(movies?[position]));

                  //add navigator.push buat pindah halaman
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MovieDetail(movies?[position]),
                    ),
                  );
                },
              ),
            );
          } catch (e) {
            print("Error: $e");
            // You can handle the error here, e.g., show an error message.
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                title: Text("Error fetching data"),
                subtitle: Text("Please check your internet connection."),
              ),
            );
          }
        },
      ),
    );
  }
}
