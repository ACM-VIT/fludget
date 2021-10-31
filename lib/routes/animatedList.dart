import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({Key? key}) : super(key: key);

  @override
  _AnimatedListWidgetState createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final items = List.from(Data.shoppingList);
  final key1 = GlobalKey<AnimatedListState>();
  final key2 = GlobalKey<AnimatedListState>();
  bool ans = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ans == false
                    ? 'Switch to Size Animation.'
                    : 'Switch to Scale Animation.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'RobotoSlab',
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Switch(
                  value: ans,
                  onChanged: (value) {
                    setState(() {
                      ans = value;
                    });
                  }),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        ans == true
                            ? "SizeAnimation is shown."
                            : "ScaleAnimation is shown.",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.black,
                          fontFamily: 'RobotoSlab',
                        ),
                      ),
                    ),
                    Expanded(
                      child: AnimatedList(
                        key: ans == true ? key1 : key2,
                        initialItemCount: items.length,
                        itemBuilder: (context, index, animation) => ans == true
                            ? buildSizeItemWidget(
                                items[index], index, animation)
                            : buildScaleItemWidget(
                                items[index], index, animation),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: insertItem,
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }

  Widget buildSizeItemWidget(item, int index, Animation<double> animation) =>
      SizeTransition(
        key: ValueKey(item.urlImage.toString()),
        sizeFactor: animation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(item.urlImage.toString()),
              ),
              title: Center(
                child: Text(
                  item.title.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.deepOrangeAccent,
                  size: 35,
                ),
                onPressed: () => removeItem(index),
              ),
            ),
          ),
        ),
      );
  Widget buildScaleItemWidget(item, int index, Animation<double> animation) =>
      ScaleTransition(
        key: ValueKey(item.urlImage.toString()),
        scale: animation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(item.urlImage.toString()),
              ),
              title: Center(
                child: Text(
                  item.title.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'RobotoSlab',
                      fontSize: 20),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.deepOrangeAccent,
                  size: 30,
                ),
                onPressed: () => removeItem(index),
              ),
            ),
          ),
        ),
      );

  int lastRemoved = 0;
  void removeItem(int index) {
    final item = items.removeAt(index);
    key1.currentState?.removeItem(index,
        (context, animation) => buildSizeItemWidget(item, index, animation),
        duration: Duration(milliseconds: 600));
    key2.currentState?.removeItem(index,
        (context, animation) => buildScaleItemWidget(item, index, animation),
        duration: Duration(milliseconds: 600));
    lastRemoved = index;
  }

  void insertItem() {
    final newIndex = lastRemoved;
    final newItem = (List.of(items)..shuffle()).first;
    items.insert(newIndex, newItem);
    GlobalKey<AnimatedListState> key;
    ans == true ? key = key1 : key = key2;
    key.currentState!.insertItem(newIndex,
        duration: Duration(
          milliseconds: 800,
        ));
  }
}

class ShoppingItem {
  final String title;
  final String urlImage;
  ShoppingItem({
    required this.title,
    required this.urlImage,
  });
}

class Data {
  static final List<ShoppingItem> shoppingList = [
    ShoppingItem(
      title: 'Milk',
      urlImage:
          'https://images.unsplash.com/photo-1563636619-e9143da7973b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80',
    ),
    ShoppingItem(
      title: 'Bread',
      urlImage:
          'https://images.unsplash.com/photo-1509440159596-0249088772ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80',
    ),
    ShoppingItem(
      title: 'Onions',
      urlImage:
          'https://images.unsplash.com/photo-1518977956812-cd3dbadaaf31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ShoppingItem(
      title: 'Salad',
      urlImage:
          'https://images.unsplash.com/photo-1540420773420-3366772f4999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=631&q=80',
    ),
    ShoppingItem(
      title: 'Tomatoes',
      urlImage:
          'https://images.unsplash.com/photo-1518977822534-7049a61ee0c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    ),
    ShoppingItem(
      title: 'Eggs',
      urlImage:
          'https://images.unsplash.com/photo-1587486913049-53fc88980cfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    ),
    ShoppingItem(
      title: 'Apples',
      urlImage:
          'https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
  ];
}

class AnimatedListDescription extends StatelessWidget {
  const AnimatedListDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'AnimatedList is a built-in widget in Flutter, used to implement a list view that animates its items when they are inserted or removed. This helps the user feel less sudden and more pleasant about the change of the list.',
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'RobotoSlab',
        ),
      ),
    );
  }
}

class AnimatedListCode extends CodeString {
  const AnimatedListCode();
  @override
  String buildCodeString() {
    return """AnimatedList(
                        key: ans == true ? key1 : key2,
                        initialItemCount: items.length,
                        itemBuilder: (context, index, animation) => ans == true
                            ? buildSizeItemWidget(
                                items[index], index, animation)
                            : buildScaleItemWidget(
                                items[index], index, animation),
                      ),""";
  }
}
