import 'package:fludget/Models/widgetModel.dart';
import 'package:fludget/constants/colors.dart';
import 'package:fludget/routes/settings.dart';
import 'package:flutter/material.dart';
import 'package:fludget/routes/Root/rootScreen.dart';
import 'widgetList.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  bool searching = false;
  String searchString = '';
  WidgetCategoy? _selectedCategory;
  bool _isExpanded = false;

  AppBar showSearchBar() {
    return AppBar(
      backgroundColor: Colors.grey[900],
      title: TextField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.white,
        autofocus: true,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              setState(() {
                searching = false;
                searchString = '';
              });
            },
          ),
          hintText: 'Search....',
          border: UnderlineInputBorder(borderSide: BorderSide.none),
        ),
        style: TextStyle(
          color: Colors.white,
          decorationColor: Colors.white,
        ),
        onSubmitted: (String text) {
          setState(() {
            searchString = text;
          });
        },
        onChanged: (String text) {
          setState(() {
            searchString = text;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searching
          ? showSearchBar()
          : AppBar(
              backgroundColor: Colors.orange[900],
              title: Text("Widget Catalog"),
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      searching = true;
                    });
                  },
                  icon: const Icon(Icons.search),
                )
              ],
              centerTitle: true,
            ),
      backgroundColor: Colors.grey[900],
      drawer: SettingsWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) => setState(() {
                      _isExpanded = !isExpanded;
                    }),
                elevation: 0,
                expandedHeaderPadding: EdgeInsets.all(1),
                dividerColor: Colors.white,
                children: [
                  ExpansionPanel(
                    backgroundColor: backroundColor,
                    isExpanded: _isExpanded,
                    headerBuilder: (context, isExpanded) {
                      if (isExpanded)
                        return Container();
                      else
                        return SizedBox(
                          height: 50,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const AlwaysScrollableScrollPhysics(),
                              children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: ChoiceChip(
                                        label: Text("All Widgets"),
                                        selected: _selectedCategory == null,
                                        onSelected: (value) => setState(() {
                                          _selectedCategory = null;
                                        }),
                                      ),
                                    )
                                  ] +
                                  WidgetCategoy.values
                                      .map((e) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 5),
                                            child: ChoiceChip(
                                              key: UniqueKey(),
                                              label: Text(
                                                  e.toString().split(".")[1]),
                                              selected: _selectedCategory == e,
                                              onSelected: (value) =>
                                                  setState(() {
                                                _selectedCategory = e;
                                              }),
                                            ),
                                          ))
                                      .toList()),
                        );
                    },
                    body: Wrap(
                        runSpacing: -15,
                        children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: ChoiceChip(
                                  label: Text("All Widgets"),
                                  selected: _selectedCategory == null,
                                  onSelected: (value) => setState(() {
                                    _selectedCategory = null;
                                  }),
                                ),
                              )
                            ] +
                            WidgetCategoy.values
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: ChoiceChip(
                                        label: Text(e.toString().split(".")[1]),
                                        selected: _selectedCategory == e,
                                        onSelected: (value) => setState(() {
                                          _selectedCategory = e;
                                        }),
                                      ),
                                    ))
                                .toList()),
                  ),
                ]),
          ),
          Expanded(child: getWidgetList(searchString)),
        ],
      ),
    );
  }

  ListView getWidgetList(String filter) {
    

    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      children: filterWidgets(
          (_selectedCategory == null)
              ? widgets
              : widgets
                  .where(
                      (element) => element.category.contains(_selectedCategory))
                  .toList(),
          filter),
    );
  }

  List<Widget> filterWidgets(List<WidgetModel> widgets, String filter) {
    List<WidgetModel> filtered = [];

    widgets.forEach((item) {
      String itemName = item.name.toLowerCase();
      String subtitle = item.subtitle.toLowerCase();
      if (itemName.contains(filter.toLowerCase()))
        filtered.add(item);
      else if (subtitle.contains(filter.toLowerCase())) filtered.add(item);
    });

    if (filtered.isEmpty) {
      return [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            child: Text('No widget found!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                )),
          ),
        ),
      ];
    }

    return filtered.map((item) => buildListItem(item)).toList();
  }

  ListTile buildListItem(WidgetModel item) {
    CircleAvatar arrow = CircleAvatar(
      child: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
      ),
      backgroundColor: Colors.orange[900],
    );

    TextStyle titleStyle = TextStyle(
      color: Colors.white,
    );

    TextStyle subtitleStyle = TextStyle(color: Colors.white70);

    return ListTile(
      leading: arrow,
      title: Text(
        item.name + " Widget",
        style: titleStyle,
      ),
      subtitle: item.subtitle.isEmpty
          ? null
          : Text(
              item.subtitle,
              style: subtitleStyle,
            ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RootScreen(item),
          ),
        );
      },
    );
  }
}
