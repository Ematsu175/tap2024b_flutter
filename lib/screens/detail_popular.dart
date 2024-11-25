import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tap2024b/network/api_popular.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:tap2024b/models/popular_model.dart';

class DetailPopular extends StatefulWidget {
  const DetailPopular({super.key});

  @override
  State<DetailPopular> createState() => _DetailPopularState();
}

class _DetailPopularState extends State<DetailPopular> {
  YoutubePlayerController? _youtubeController;
  String? trailerUrl;
  String? videoKey; // Clave del video de YouTube
  bool isVideoAvailable = false; // Indica si hay un video disponible
  List<Map<String, dynamic>> actors = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final popular = ModalRoute.of(context)!.settings.arguments as PopularModel;

    ApiPopular().getTrailer(popular.id).then((url) {
      if (url != null) {
        setState(() {
          trailerUrl = url;
          videoKey = YoutubePlayer.convertUrlToId(trailerUrl!);
          if (videoKey != null) {
            isVideoAvailable = true;
            _youtubeController = YoutubePlayerController(
              initialVideoId: videoKey!,
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            );
          }
        });
      }
    });

    ApiPopular().getActors(popular.id).then((actorList) {
      setState(() {
        actors = actorList;
      });
    });
  }

  @override
  void dispose() {
    _youtubeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final popular = ModalRoute.of(context)!.settings.arguments as PopularModel;

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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: popular.id,
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
                  const SizedBox(height: 20),
                  Text(
                    popular.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    popular.overview,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 20),
                  if (isVideoAvailable)
                    YoutubePlayer(
                      controller: _youtubeController!,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                    )
                  else
                    const Center(
                      child: Text(
                        "No hay tráiler disponible.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  const SizedBox(height: 20),
                  const Text(
                    "Reparto:",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  actors.isNotEmpty
                      ? SizedBox(
                          height: 150, 
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal, // Scroll lateral
                            itemCount: actors.length,
                            itemBuilder: (context, index) {
                              final actor = actors[index];
                              return Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Imagen del actor
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: actor['profilePath'] !=
                                              null
                                          ? NetworkImage(
                                              'https://image.tmdb.org/t/p/w500/${actor['profilePath']}')
                                          : const AssetImage(
                                                  'assets/default_actor.png')
                                              as ImageProvider,
                                    ),
                                    const SizedBox(height: 5),
                                    // Nombre del actor
                                    Text(
                                      actor['name'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // Personaje
                                    Text(
                                      actor['character'],
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      : const Center(
                          child: Text(
                            "Cargando actores...",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
