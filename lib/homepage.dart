import 'package:fludget/Models/widgetModel.dart';
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

  AppBar showSearchBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      iconTheme: Theme.of(context).primaryIconTheme,
      title: TextField(
        keyboardType: TextInputType.text,
        autofocus: true,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: IconButton(
            icon: Icon(Icons.arrow_back),
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
          ? showSearchBar(context)
          : AppBar(
              backgroundColor: Theme.of(context).primaryColor,
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
      backgroundColor: Theme.of(context).backgroundColor,
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
                    backgroundColor: Theme.of(context).backgroundColor,
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
                                        //selectedColor: Theme.of(context).primaryColor,
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
                                              //selectedColor: Theme.of(context).primaryColor,
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
                                  //selectedColor: Theme.of(context).primaryColor,
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
                                        //selectedColor: Theme.of(context).primaryColor,
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
          Expanded(child: getWidgetList(searchString, context)),
        ],
      ),
    );
  }

  ListView getWidgetList(String filter, BuildContext context) {

    List<WidgetModel> widgetList = List.from(widgets);
    widgetList.sort((a, b) => a.name.compareTo(b.name));

    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      children: filterWidgets(
          (_selectedCategory == null)
              ? widgetList
              : widgetList
                  .where(
                      (element) => element.category.contains(_selectedCategory))
                  .toList(),
          filter,
          context),
    );
  }

  List<Widget> filterWidgets(
      List<WidgetModel> widgets, String filter, BuildContext context) {
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
                )),
          ),
        ),
      ];
    }

    return filtered.map((item) => buildListItem(item, context)).toList();
  }

  ListTile buildListItem(WidgetModel item, BuildContext context) {
    CircleAvatar arrow = CircleAvatar(
      child: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );

    return ListTile(
      leading: arrow,
      title: Text(
        item.name + " Widget",
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: item.subtitle.isEmpty
          ? null
          : Text(
              item.subtitle,
              style: Theme.of(context).textTheme.subtitle1,
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
