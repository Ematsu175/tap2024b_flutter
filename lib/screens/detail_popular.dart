import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tap2024b/models/popular_model.dart';


class DetailPopular extends StatefulWidget {
  const DetailPopular({super.key});

  @override
  State<DetailPopular> createState() => _DetailPopularState();
}

class _DetailPopularState extends State<DetailPopular> {
  String? trailerUrl; // URL del tráiler
  

  @override
  Widget build(BuildContext context) {
    // Obtén el modelo PopularModel pasado como argumento
    final popular = ModalRoute.of(context)!.settings.arguments as PopularModel;

    // Calcula la calificación para el RatingBar
    double rating = (popular.voteAverage / 2).clamp(0, 5); 

    return Scaffold(
      appBar: AppBar(
        title: Text(popular.title),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${popular.posterPath}'),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            child: Container(
              width: 125,
              height: 225,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/${popular.posterPath}'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Text(
                    popular.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Text(
                    popular.overview,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                // RatingBar de solo lectura
                RatingBarIndicator(
                  rating: rating,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 30.0,
                ),
                Text(
                  'Calificación: ${popular.voteAverage} / 10',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
