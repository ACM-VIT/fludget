import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class NestedScrollViewImplementation extends StatelessWidget {
  const NestedScrollViewImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = <String>['Tab 1', 'Tab 2'];
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Here goes your top header"),
                      ),
                      Placeholder(
                        fallbackHeight: 200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TabBar(
                        tabs: _tabs
                            .map((String name) => Tab(text: name))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverFixedExtentList(
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return ListTile(
                                  title: Text('Item $index'),
                                );
                              },
                              childCount: 30,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class NestedScrollViewDescription extends StatelessWidget {
  const NestedScrollViewDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTextStyle(
          style: TextStyle(height: 1.5),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "In a normal ScrollView, there is one set of slivers (the components of the scrolling view). If one of those slivers hosted a TabBarView which scrolls in the opposite direction (e.g. allowing the user to swipe horizontally between the pages represented by the tabs, while the list scrolls vertically), then any list inside that TabBarView would not interact with the outer ScrollView. For example, flinging the inner list to scroll to the top would not cause a collapsed SliverAppBar in the outer ScrollView to expand.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "NestedScrollView solves this problem by providing custom ScrollControllers for the outer ScrollView and the inner ScrollViews (those inside the TabBarView, hooking them together so that they appear, to the user, as one coherent scroll view.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Class Definition or Syntax: ",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  """
  const NestedScrollView({
  Key? key,
  this.controller,
  this.scrollDirection = Axis.vertical,
  this.reverse = false,
  this.physics,
  required this.headerSliverBuilder,
  required this.body,
  this.dragStartBehavior = DragStartBehavior.start,
  this.floatHeaderSlivers = false,
  this.clipBehavior = Clip.hardEdge,
  this.restorationId,
  this.scrollBehavior,
}) : assert(scrollDirection != null),
     assert(reverse != null),
     assert(headerSliverBuilder != null),
     assert(body != null),
     assert(floatHeaderSlivers != null),
     assert(clipBehavior != null),
     super(key: key);
                """,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NestedScrollViewCode extends CodeString {
  const NestedScrollViewCode();
  @override
  String buildCodeString() {
    return """ NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("Here goes your top header"),
                      ),
                      Placeholder(
                        fallbackHeight: 200,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TabBar(
                        tabs: _tabs
                            .map((String name) => Tab(text: name))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverFixedExtentList(
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return ListTile(
                                  title: Text('Item \$index'),
                                );
                              },
                              childCount: 30,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
""";
  }
}
