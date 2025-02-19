import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required PageController controllerFeaturedBot,
    required this.count,
  }) : _controllerFeaturedBot = controllerFeaturedBot;

  final PageController _controllerFeaturedBot;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: _controllerFeaturedBot,
        count: count,
        onDotClicked: (index) {},
        effect: ScrollingDotsEffect(
          fixedCenter: true,
          maxVisibleDots: 5,
          spacing: 4.0,
          activeDotScale: 0,
          radius: 16.0,
          dotWidth: 16.0,
          dotHeight: 8.0,
          paintStyle: PaintingStyle.fill,
          dotColor: Colors.grey,
          activeDotColor: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
