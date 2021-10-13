import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({Key? key}) : super(key: key);

  @override
  _AnimatedListWidgetState createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final items = List.from(Data.shoppingList);
  final key = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: key,
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) =>
            buildShoppingItemWidget(items[index], index, animation),
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

  Widget buildShoppingItemWidget(
          item, int index, Animation<double> animation) =>
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

  int lastRemoved = 0;
  void removeItem(int index) {
    final item = items.removeAt(index);
    key.currentState?.removeItem(index,
        (context, animation) => buildShoppingItemWidget(item, index, animation),
        duration: Duration(milliseconds: 600));
    lastRemoved = index;
  }

  void insertItem() {
    final newIndex = lastRemoved;
    final newItem = (List.of(items)..shuffle()).first;
    items.insert(newIndex, newItem);
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
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'AnimatedList is a built-in widget in Flutter, used to implement a list view that animates its items when they are inserted or removed. This helps the user feel less sudden and more pleasant about the change of the list.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
