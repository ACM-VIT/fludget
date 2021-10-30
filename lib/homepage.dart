import 'package:fludget/Models/widgetModel.dart';
import 'package:fludget/routes/Card.dart';
import 'package:fludget/routes/DataTable.dart';
import 'package:fludget/routes/Root/rootScreen.dart';
import 'package:fludget/routes/button.dart';
import 'package:fludget/routes/column.dart';
import 'package:fludget/routes/dialogBox.dart';
import 'package:fludget/routes/dropDownButton.dart';
import 'package:fludget/routes/flow.dart';
import 'package:fludget/routes/gridList.dart';
import 'package:fludget/routes/expanded.dart';
import 'package:fludget/routes/gridList.dart';
import 'package:fludget/routes/hero.dart';
import 'package:fludget/routes/icon.dart';
import 'package:fludget/routes/image.dart';
import 'package:fludget/routes/opacity.dart';
import 'package:fludget/routes/reorderableListView.dart';
import 'package:fludget/routes/row.dart';
import 'package:fludget/routes/settings.dart';
import 'package:fludget/routes/stack.dart';
import 'package:fludget/routes/table.dart';
import 'package:fludget/routes/switch.dart';
import 'package:fludget/routes/text.dart';
import 'package:fludget/routes/textfield.dart';
import 'package:fludget/routes/reorderableListView.dart';
import 'package:fludget/routes/wrap.dart';
import 'package:fludget/cupertinowidgets.dart';
import 'package:fludget/materialwidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex=0;

PageController pageController=PageController();

void onTapped(int index){
  setState(() {
    _selectedIndex=index;
  });

  //To animate the between different pages chage the parameters of the page controller below
  pageController.animateToPage(index, duration:Duration(milliseconds: 100), curve:Curves.linear);
}

  ListView getWidgetList(String filter) {
    const List<WidgetModel> widgets = [
      WidgetModel(
        name: "Column",
        implementation: ColumnImplementation(),
        description: ColumnDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Column-class.html",
      ),
      WidgetModel(
        name: "Row",
        implementation: RowImplementation(),
        description: RowDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Row-class.html",
      ),
      WidgetModel(
        name: "Stack",
        implementation: StackImplementation(),
        description: StackDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Stack-class.html",
      ),
      WidgetModel(
        name: "Text",
        implementation: TextImplementation(),
        description: TextDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Text-class.html",
      ),
      WidgetModel(
        name: "Icon",
        implementation: IconImplementation(),
        description: IconDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Icon-class.html",
      ),
      WidgetModel(
        name: "Image",
        subtitle: "Asset Image, Network Image",
        implementation: ImageImplementation(),
        description: ImageDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Image-class.html",
      ),
      WidgetModel(
        name: "Button",
        subtitle: "Elevated Button, Text Button, Floating Action Button",
        implementation: ButtonImplementation(),
        description: ButtonDescription(),
        link:
            "https://api.flutter.dev/flutter/material/ElevatedButton-class.html",
      ),
      WidgetModel(
        name: "DialogBox",
        subtitle: "shows Dialog",
        implementation: DialogBoxImplementation(),
        description: DialogBoxDescription(),
        link: "https://api.flutter.dev/flutter/material/AlertDialog-class.html",
      ),
      WidgetModel(
        name: "GridList",
        implementation: GridListImplementation(),
        description: GridListDescription(),
        link: "https://api.flutter.dev/flutter/widgets/GridView-class.html",
      ),
      WidgetModel(
        name: "Switch",
        subtitle: "Toggle Switch",
        implementation: SwitchImplementation(),
        description: SwitchDescription(),
        link: "https://api.flutter.dev/flutter/material/Switch-class.html",
      ),
      WidgetModel(
        name: "TextField",
        subtitle: "Input field for username and password",
        implementation: TextFieldImplementation(),
        description: TextFielDescription(),
        link: "https://api.flutter.dev/flutter/material/TextField-class.html",
      ),
      WidgetModel(
        name: "Card",
        implementation: CardImplementation(),
        description: CardDescription(),
        link: "https://api.flutter.dev/flutter/material/Card-class.html",
      ),
      WidgetModel(
        name: "Opacity",
        implementation: OpacityImplementation(),
        description: OpacityDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Opacity-class.html",
      ),
      WidgetModel(
        name: "Table",
        implementation: TableImplementation(),
        description: TableDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Table-class.html",
      ),
      WidgetModel(
        name: "Expanded",
        implementation: ExpandedImplementation(),
        description: ExpandedDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Expanded-class.html",
      ),
      WidgetModel(
        name: "ReOrderableListView",
        subtitle: "A Reorderable List",
        implementation: ReOrderableListViewImplementation(),
        description: ReOrderableListViewDescription(),
        link:
            "https://api.flutter.dev/flutter/material/ReorderableListView-class.html",
      ),
      WidgetModel(
        name: "DropDownButton",
        implementation: DropDownButtonSample(),
        description: DropDownButtonDescription(),
        link:
            "https://api.flutter.dev/flutter/material/DropdownButton -class.html",
      ),
      WidgetModel(
        name: "Wrap",
        subtitle: "Wrap Widget",
        implementation: WrapWidget(),
        description: WrapWidgetDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Wrap-class.html",
      ),
      WidgetModel(
        name: "Hero",
        subtitle: "Hero Animation between widgets",
        implementation: HeroWidget(),
        description: HeroWidgetDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Hero-class.html",
      ),
      WidgetModel(
        name: "DataTable",
        subtitle: "Data Table  widgets",
        implementation: DatatableWidget(),
        description: DataTableWidgetDescription(),
        link: "https://api.flutter.dev/flutter/material/DataTable-class.html",
      ),
      WidgetModel(
        name: "Flow",
        subtitle: "Flow  widgets",
        implementation: FlowWidgetImplementation(),
        description: FlowWidgetDescription(),
        link: "https://api.flutter.dev/flutter/widgets/Flow-class.html",
      ),
    ];
@override

Widget build(BuildContext context) {
  return Scaffold(


    body: PageView(
      controller:pageController,
      onPageChanged:(int index){
        setState(() {
          _selectedIndex=index;
        });

      },



      // Insert your Required Screens Botttom NavBAr
      children: [
        MaterialWidgets(),
        CupertinoWidgets(),
      ],
    ),

    //Bottom Navigation Bar

    bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Material Widgets'),
      BottomNavigationBarItem(icon:Icon(Icons.menu),label: 'Cupertino Widgets'),

    ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).shadowColor,
      onTap: onTapped,),
  );
}
}
