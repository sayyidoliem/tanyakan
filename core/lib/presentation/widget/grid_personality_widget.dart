import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class GridPersonalityWidget extends StatelessWidget {
  const GridPersonalityWidget({
    super.key,
    required this.titleBot,
    required this.navigate,
  });

  final String titleBot;
  final Function navigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigate(),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Colors.white10,
            width: 4,
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: CachedNetworkImage(
                  imageUrl: DummyData().dummyImageUrl,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Center(
                    child: Icon(Icons.error),
                  ),
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cards Title 2",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  Container(height: 10),
                  Text(
                    'MyStringsSample.card_text',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
        //  Card(
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(8),
        //       side: const BorderSide(
        //         color: Colors.white10,
        //         width: 4,
        //       ),
        //     ),
        //     clipBehavior: Clip.antiAliasWithSaveLayer,
        //     child: Padding(
        //       padding: const EdgeInsets.all(15),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Row(
        //             children: [
        //               ClipRRect(
        //                 borderRadius:
        //                     const BorderRadius.all(Radius.circular(8)),
        //                 child: CachedNetworkImage(
        //                   height: 80,
        //                   width: 80,
        //                   placeholder: (context, url) =>
        //                       const Center(child: CircularProgressIndicator()),
        //                   errorWidget: (context, url, error) =>
        //                       const Center(child: Icon(Icons.error)),
        //                   imageUrl: DummyData().dummyImageUrl,
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 16,
        //                 height: 5,
        //               ),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Cards Title 1",
        //                     style: ThemeTextGlobal.title(context)!.copyWith(),
        //                   ),
        //                   Container(height: 5),
        //                   Text(
        //                     "Sub title",
        //                     style: ThemeTextGlobal.body1(context)!.copyWith(
        //                       color: Colors.grey[500],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //           const SizedBox(width: 20, height: 20),
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               TruncatedText(
        //                 titleBot,
        //                 maxLines: 2,
        //                 style: ThemeTextGlobal.subhead(context)!.copyWith(
        //                   color: Colors.grey[700],
        //                 ),
        //                 maxLength: 20,
        //                 truncationSuffix: '... See more',
        //                 initiallyExpanded: false,
        //                 expandable: false,
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
       
    