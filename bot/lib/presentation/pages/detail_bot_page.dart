import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:core/common/constant.dart';

class DetailBotPage extends StatefulWidget {
  const DetailBotPage({super.key});

  @override
  State<DetailBotPage> createState() => _DetailBotPageState();
}

class _DetailBotPageState extends State<DetailBotPage> {
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: DummyData().dummyImageUrl,
          width: screenWidth,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Container(
          margin: const EdgeInsets.only(top: 48 + 8),
          child: DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  // color: kRichBlack,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('movie.title'),
                            FilledButton(
                              onPressed: () async {
                                // final cubit =
                                //     context.read<WatchlistMoviesCubit>();
                                // if (!isAddedWatchlist) {
                                //   await cubit.addWatchlist(movie);
                                // } else {
                                //   await cubit.removeFromWatchlist(movie);
                                // }
                              },
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.add),
                                  // isAddedWatchlist
                                  //     ? Icon(Icons.check)
                                  //     : Icon(Icons.add),
                                  Text('Watchlist'),
                                ],
                              ),
                            ),
                            // Text(_showGenres(movie.genres)),
                            // Text(_showDuration(movie.runtime)),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: 2,
                                  itemCount: 5,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    // color: kMikadoYellow,
                                  ),
                                  itemSize: 24,
                                ),
                                const Text('movie.voteAverage'),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text('Overview'),
                            const Text('movie.overview'),
                            const SizedBox(height: 16),
                            const Text('Recommendations'),
                            // _buildRecommendations(context),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child:
                          Container(color: Colors.white, height: 4, width: 48),
                    ),
                  ],
                ),
              );
            },
            minChildSize: 0.25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            // backgroundColor: kRichBlack,
            foregroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}

// class DetailContent extends StatelessWidget {
//   final MovieDetail movie;
//   final List<Movie> recommendations;

  // DetailContent(this.movie, this.recommendations);

  // @override
  // Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // return BlocConsumer<WatchlistMoviesCubit, WatchlistMoviesState>(
    //   listener: (context, state) {
    //     if (state is MovieWatchlistStatusState && state.message.isNotEmpty) {
    //       ScaffoldMessenger.of(context)
    //           .showSnackBar(SnackBar(content: Text(state.message)));
    //     }
    //   },
    //   builder: (BuildContext context, state) {
    //     final isAddedWatchlist =
    //         state is MovieWatchlistStatusState && state.isAddedToWatchlist;
      //   return Stack(
      //     children: [
      //       CachedNetworkImage(
      //         imageUrl: 'https://image.tmdb.org/t/p/w500${movie.posterPath}',
      //         width: screenWidth,
      //         placeholder: (context, url) =>
      //             Center(child: CircularProgressIndicator()),
      //         errorWidget: (context, url, error) => Icon(Icons.error),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.only(top: 48 + 8),
      //         child: DraggableScrollableSheet(
      //           builder: (context, scrollController) {
      //             return Container(
      //               decoration: BoxDecoration(
      //                 // color: kRichBlack,
      //                 borderRadius:
      //                     BorderRadius.vertical(top: Radius.circular(16)),
      //               ),
      //               padding: const EdgeInsets.only(
      //                 left: 16,
      //                 top: 16,
      //                 right: 16,
      //               ),
      //               child: Stack(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(top: 16),
      //                     child: SingleChildScrollView(
      //                       controller: scrollController,
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Text(movie.title),
      //                           FilledButton(
      //                             onPressed: () async {
      //                               // final cubit =
      //                               //     context.read<WatchlistMoviesCubit>();
      //                               // if (!isAddedWatchlist) {
      //                               //   await cubit.addWatchlist(movie);
      //                               // } else {
      //                               //   await cubit.removeFromWatchlist(movie);
      //                               // }
      //                             },
      //                             child: Row(
      //                               mainAxisSize: MainAxisSize.min,
      //                               children: [
      //                                 Icon(Icons.add),
      //                                 // isAddedWatchlist
      //                                 //     ? Icon(Icons.check)
      //                                 //     : Icon(Icons.add),
      //                                 Text('Watchlist'),
      //                               ],
      //                             ),
      //                           ),
      //                           // Text(_showGenres(movie.genres)),
      //                           // Text(_showDuration(movie.runtime)),
      //                           Row(
      //                             children: [
      //                               RatingBarIndicator(
      //                                 rating: movie.voteAverage / 2,
      //                                 itemCount: 5,
      //                                 itemBuilder: (context, index) => Icon(
      //                                     Icons.star,
      //                                     // color: kMikadoYellow,
      //                                     ),
      //                                 itemSize: 24,
      //                               ),
      //                               Text('${movie.voteAverage}'),
      //                             ],
      //                           ),
      //                           SizedBox(height: 16),
      //                           Text('Overview'),
      //                           Text(movie.overview),
      //                           SizedBox(height: 16),
      //                           Text('Recommendations' ),
      //                           // _buildRecommendations(context),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                   Align(
      //                     alignment: Alignment.topCenter,
      //                     child: Container(
      //                         color: Colors.white, height: 4, width: 48),
      //                   ),
      //                 ],
      //               ),
      //             );
      //           },
      //           minChildSize: 0.25,
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: CircleAvatar(
      //           // backgroundColor: kRichBlack,
      //           foregroundColor: Colors.white,
      //           child: IconButton(
      //             icon: Icon(Icons.arrow_back),
      //             onPressed: () {
      //               Navigator.pop(context);
      //             },
      //           ),
      //         ),
      //       ),
      //     ],
      //   );
    
      // }
  // }

  // String _showGenres(List<MovieGenre> genres) {
  //   return genres.map((genre) => genre.name).join(', ');
  // }

  // String _showDuration(int runtime) {
  //   final int hours = runtime ~/ 60;
  //   final int minutes = runtime % 60;
  //   return hours > 0 ? '${hours}h ${minutes}m' : '${minutes}m';
  // }

  // Widget _buildRecommendations(BuildContext context) {
  //   return BlocBuilder<MovieDetailCubit, MovieDetailState>(
  //     builder: (context, state) {
  //       if (state is MovieDetailLoading) {
  //         return Center(child: CircularProgressIndicator());
  //       } else if (state is MovieDetailError) {
  //         return Text(state.message);
  //       } else if (state is MovieDetailLoaded) {
  //         return Container(
  //           height: 150,
  //           child: ListView.builder(
  //             scrollDirection: Axis.horizontal,
  //             itemCount: recommendations.length,
  //             itemBuilder: (context, index) {
  //               final movie = recommendations[index];
  //               return Padding(
  //                 padding: const EdgeInsets.all(4.0),
  //                 child: InkWell(
  //                   onTap: () {
                      
  //                   },
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.all(Radius.circular(8)),
  //                     child: CachedNetworkImage(
  //                       imageUrl:
  //                           'https://image.tmdb.org/t/p/w500${movie.posterPath}',
  //                       placeholder: (context, url) =>
  //                           Center(child: CircularProgressIndicator()),
  //                       errorWidget: (context, url, error) => Icon(Icons.error),
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             },
  //           ),
  //         );
  //       }
  //       return Container(); // Default case if no recommendations are loaded
  //     },
  //   );
  // }
// }