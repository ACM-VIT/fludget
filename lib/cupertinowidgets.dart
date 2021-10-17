import 'package:fludget/Models/widgetModel.dart';
import 'package:fludget/routes/settings.dart';
import 'package:flutter/material.dart';

class CupertinoWidgets extends StatefulWidget {
  const CupertinoWidgets({Key? key}) : super(key: key);

  @override
  State<CupertinoWidgets> createState() => _CupertinoWidgetsState();
}

class _CupertinoWidgetsState extends State<CupertinoWidgets> {
  bool searching = false;
  String searchString = '';
  WidgetCategoy? _selectedCategory;
  bool _isExpanded = false;
  var _controller = TextEditingController();

  AppBar showSearchBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      iconTheme: Theme.of(context).primaryIconTheme,
      title: TextField(
        keyboardType: TextInputType.text,
        autofocus: true,
        controller: _controller,
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
          suffixIcon: IconButton(
            onPressed: () {
              _controller.clear();
              setState(() {
                searchString = '';
              });
            },
            icon: Icon(Icons.clear),
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
      body: Container(
        color: Theme.of(context).backgroundColor,
      ),
    );
  }
}
