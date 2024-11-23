import 'package:flutter/material.dart';
import 'package:tap2024b/models/popular_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailPopular extends StatefulWidget {
  const DetailPopular({super.key});

  @override
  State<DetailPopular> createState() => _DetailPopularState();
}

class _DetailPopularState extends State<DetailPopular> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();

    // Supongamos que tienes la clave del tráiler de YouTube
    const String videoKey = ""; // Reemplaza con la clave real del tráiler
    _youtubeController = YoutubePlayerController(
      initialVideoId: videoKey,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final popular = ModalRoute.of(context)!.settings.arguments as PopularModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(popular.title),
      ),
      body: Stack(
        children: [
          // Fondo oscuro con la imagen
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
          // Poster de la película
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/${popular.posterPath}'),
                ),
              ),
            ),
          ),
          // Título de la película
          Positioned(
            top: 80,
            right: 50,
            child: Container(
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
          ),
          // Descripción de la película
          Positioned(
            top: 130,
            right: 50,
            child: Container(
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
          ),
          // Votos promedio
          Positioned(
            top: 160,
            right: 50,
            child: Container(
              width: 200,
              child: Row(
                children: [
                  Image.asset('vote_average.png'),
                  Text(
                    popular.voteAverage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Reproductor de YouTube
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Container(
              height: 200,
              child: YoutubePlayer(
                controller: _youtubeController,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
