import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controllerFeaturedBot = PageController(
    viewportFraction: 0.8,
    keepPage: true,
  );
  final PageController _controllerRecomendBot = PageController(
    viewportFraction: 0.8,
  );
  final PageController _controllerNewBot = PageController(
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tanyakan Apps(demo)'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          switch (constraints.maxWidth) {
            case < 600:
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Featured Bot',
                        style: ThemeTextGlobal.medium(context).copyWith(),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      fit: StackFit.loose,
                      children: [
                        SizedBox(
                          height: 180,
                          child: PageView.builder(
                            controller: _controllerFeaturedBot,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context1, index) {
                              return ListenableBuilder(
                                builder: (context, child) {
                                  double factor = 1.3;
                                  if (_controllerFeaturedBot
                                      .position.hasContentDimensions) {
                                    factor = 1.2 -
                                        (_controllerFeaturedBot.page! - index)
                                            .abs();
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 140 + (factor * 20),
                                        child: PersonalityWidget(
                                          titleBot: DummyData().dummyTitleBot,
                                          navigate: () {
                                            context.go(CHAT_PAGE_ROUTE);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                listenable: _controllerFeaturedBot,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerFeaturedBot.previousPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_left),
                              ),
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerFeaturedBot.nextPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PageIndicator(
                      controllerFeaturedBot: _controllerFeaturedBot,
                      count: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'New Bot Release',
                        style: ThemeTextGlobal.medium(context).copyWith(),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: PageView.builder(
                            controller: _controllerNewBot,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ListenableBuilder(
                                builder: (context, child) {
                                  double factor = 1.3;
                                  if (_controllerNewBot
                                      .position.hasContentDimensions) {
                                    factor = 1.2 -
                                        (_controllerNewBot.page! - index).abs();
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 140 + (factor * 20),
                                        child: PersonalityWidget(
                                          titleBot: DummyData().dummyTitleBot,
                                          navigate: () {
                                            context.go(CHAT_PAGE_ROUTE);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                listenable: _controllerNewBot,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filledTonal(
                                onPressed: () => _controllerNewBot.previousPage(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_left),
                              ),
                              IconButton.filledTonal(
                                onPressed: () => _controllerNewBot.nextPage(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PageIndicator(
                      controllerFeaturedBot: _controllerNewBot,
                      count: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Recomend Bot for you',
                        style: ThemeTextGlobal.medium(context).copyWith(),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: PageView.builder(
                            controller: _controllerRecomendBot,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ListenableBuilder(
                                builder: (context, child) {
                                  double factor = 1.3;
                                  if (_controllerRecomendBot
                                      .position.hasContentDimensions) {
                                    factor = 1.2 -
                                        (_controllerRecomendBot.page! - index)
                                            .abs();
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 140 + (factor * 20),
                                        child: PersonalityWidget(
                                          titleBot: DummyData().dummyTitleBot,
                                          navigate: () {
                                            context.go(CHAT_PAGE_ROUTE);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                listenable: _controllerRecomendBot,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerRecomendBot.previousPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_left),
                              ),
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerRecomendBot.nextPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PageIndicator(
                      controllerFeaturedBot: _controllerRecomendBot,
                      count: 8,
                    ),
                  ],
                ),
              );

            //TODO: implement gridview

            // case < 729:
            //   print(constraints);
            //   return GridView.builder(
            //     padding: const EdgeInsets.all(16),
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2),
            //     itemBuilder: (contexmt, index) {
            //       return SizedBox(
            //         height: 56,
            //         child: GridPersonalityWidget(
            //           titleBot: DummyData().dummyTitleBot,
            //           navigate: () {
            //             context.go(CHAT_PAGE_ROUTE);
            //           },
            //         ),
            //       );
            //     },
            //   );
            // case < 1200:
            //   return GridView.builder(
            //     padding: const EdgeInsets.all(16),
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 3),
            //     itemBuilder: (context, index) {
            //       return GridPersonalityWidget(
            //         titleBot: DummyData().dummyTitleBot,
            //         navigate: () {
            //           context.go(CHAT_PAGE_ROUTE);
            //         },
            //       );
            //     },
            //   );

            default:
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Featured Bot',
                        style: ThemeTextGlobal.medium(context).copyWith(),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      fit: StackFit.loose,
                      children: [
                        SizedBox(
                          height: 180,
                          child: PageView.builder(
                            controller: _controllerFeaturedBot,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context1, index) {
                              return ListenableBuilder(
                                builder: (context, child) {
                                  double factor = 1.3;
                                  if (_controllerFeaturedBot
                                      .position.hasContentDimensions) {
                                    factor = 1.2 -
                                        (_controllerFeaturedBot.page! - index)
                                            .abs();
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 140 + (factor * 20),
                                        child: PersonalityWidget(
                                          titleBot: DummyData().dummyTitleBot,
                                          navigate: () {
                                            context.go(CHAT_PAGE_ROUTE);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                listenable: _controllerFeaturedBot,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerFeaturedBot.previousPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_left),
                              ),
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerFeaturedBot.nextPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PageIndicator(
                      controllerFeaturedBot: _controllerFeaturedBot,
                      count: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'New Bot Release',
                        style: ThemeTextGlobal.medium(context).copyWith(),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: PageView.builder(
                            controller: _controllerNewBot,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ListenableBuilder(
                                builder: (context, child) {
                                  double factor = 1.3;
                                  if (_controllerNewBot
                                      .position.hasContentDimensions) {
                                    factor = 1.2 -
                                        (_controllerNewBot.page! - index).abs();
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 140 + (factor * 20),
                                        child: PersonalityWidget(
                                          titleBot: DummyData().dummyTitleBot,
                                          navigate: () {
                                            context.go(CHAT_PAGE_ROUTE);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                listenable: _controllerNewBot,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filledTonal(
                                onPressed: () => _controllerNewBot.previousPage(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_left),
                              ),
                              IconButton.filledTonal(
                                onPressed: () => _controllerNewBot.nextPage(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PageIndicator(
                      controllerFeaturedBot: _controllerNewBot,
                      count: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Recomend Bot for you',
                        style: ThemeTextGlobal.medium(context).copyWith(),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: PageView.builder(
                            controller: _controllerRecomendBot,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ListenableBuilder(
                                builder: (context, child) {
                                  double factor = 1.3;
                                  if (_controllerRecomendBot
                                      .position.hasContentDimensions) {
                                    factor = 1.2 -
                                        (_controllerRecomendBot.page! - index)
                                            .abs();
                                  }
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        height: 140 + (factor * 20),
                                        child: PersonalityWidget(
                                          titleBot: DummyData().dummyTitleBot,
                                          navigate: () {
                                            context.go(CHAT_PAGE_ROUTE);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                listenable: _controllerRecomendBot,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerRecomendBot.previousPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_left),
                              ),
                              IconButton.filledTonal(
                                onPressed: () =>
                                    _controllerRecomendBot.nextPage(
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeInOut),
                                icon: Icon(Icons.arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    PageIndicator(
                      controllerFeaturedBot: _controllerRecomendBot,
                      count: 8,
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}
