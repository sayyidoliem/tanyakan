import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tanyakan/common/constant.dart';
import 'package:tanyakan/common/decoration.dart';
import 'package:truncated/truncated.dart';

class PersonalityWidget extends StatelessWidget {
  const PersonalityWidget({
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
          side: const BorderSide(color: Colors.white10, width: 4),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: CachedNetworkImage(
                      height: 80,
                      width: 80,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Center(child: Icon(Icons.error)),
                      imageUrl: DummyData().dummyImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20, height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 5),
                      Text(
                        "Cards Title 1",
                        style: ThemeTextGlobal.title(context)!.copyWith(),
                      ),
                      Container(height: 5),
                      Text(
                        "Sub title",
                        style: ThemeTextGlobal.body1(context)!.copyWith(
                          color: Colors.grey[500],
                        ),
                      ),
                      Container(height: 10),
                      TruncatedText(
                        titleBot,
                        maxLines: 1,
                        style: ThemeTextGlobal.subhead(context)!.copyWith(
                          color: Colors.grey[700],
                        ),
                        maxLength: 20,
                        truncationSuffix: '... See more',
                        initiallyExpanded: false,
                        expandable: false,
                      ),
                      Container(height: 10),
                    ],
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
