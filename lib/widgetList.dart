import 'package:fludget/flexible.dart';
import 'package:fludget/routes/AnimatedBuilderWidget.dart';
import 'package:fludget/routes/Card.dart';
import 'package:fludget/routes/DataTable.dart';
import 'package:fludget/routes/TabBar.dart';
import 'package:fludget/routes/DatePickerDialog.dart';
import 'package:fludget/routes/FormField.dart';
import 'package:fludget/routes/FutureBuilder.dart';
import 'package:fludget/routes/gridPaper.dart';
import 'package:fludget/routes/IgnorePointer.dart';
import 'package:fludget/routes/Root/cliprrect.dart';
import 'package:fludget/routes/SliverAppBar.dart';
import 'package:fludget/routes/about_dialog.dart';
import 'package:fludget/routes/absorbPointer.dart';
import 'package:fludget/routes/animatedIcon.dart';
import 'package:fludget/routes/animatedList.dart';
import 'package:fludget/routes/appbar.dart';
import 'package:fludget/routes/banner.dart';
import 'package:fludget/routes/checkboxListTile.dart';
import 'package:fludget/routes/circularProgressIndicator.dart';
import 'package:fludget/routes/clipOval.dart';
import 'package:fludget/routes/clipRect.dart';
import 'package:fludget/routes/clip_path.dart';
import 'package:fludget/routes/coloredBox.dart';
import 'package:fludget/routes/colourFilteredWidget.dart';
import 'package:fludget/routes/column.dart';
import 'package:fludget/routes/cupertinoActionSheet.dart';
import 'package:fludget/routes/container.dart';
import 'package:fludget/routes/customPaint.dart';
import 'package:fludget/routes/decoratedBox.dart';
import 'package:fludget/routes/cupertino_activity_indicator.dart';
import 'package:fludget/routes/dialogBox.dart';
import 'package:fludget/routes/dismissible_widget.dart';
import 'package:fludget/routes/draggableWidget.dart';
import 'package:fludget/routes/draggable_scrollable_sheet.dart';
import 'package:fludget/routes/drawer_widget.dart';
import 'package:fludget/routes/dropDownButton.dart';
import 'package:fludget/routes/elevatedButton.dart';
import 'package:fludget/routes/errorWidget.dart';
import 'package:fludget/routes/expanded.dart';
import 'package:fludget/routes/fade_in_image.dart';
import 'package:fludget/routes/floatingActionButton.dart';
import 'package:fludget/routes/gestureDetector.dart';
import 'package:fludget/routes/gridList.dart';
import 'package:fludget/routes/hero.dart';
import 'package:fludget/routes/icon.dart';
import 'package:fludget/routes/image.dart';
import 'package:fludget/routes/indexedStack.dart';
import 'package:fludget/routes/linearProgressIndicator.dart';
import 'package:fludget/routes/listTile.dart';
import 'package:fludget/routes/listWheelScrollView.dart';
import 'package:fludget/routes/nested_scroll_view.dart';
import 'package:fludget/routes/opacity.dart';
import 'package:fludget/routes/outlinedButton.dart';
import 'package:fludget/routes/pageview.dart';
import 'package:fludget/routes/place_holder.dart';
import 'package:fludget/routes/refreshIndicator.dart';
import 'package:fludget/routes/reorderableListView.dart';
import 'package:fludget/routes/richText.dart';
import 'package:fludget/routes/row.dart';
import 'package:fludget/routes/scrollbar.dart';
import 'package:fludget/routes/singleChildScrollView.dart';
import 'package:fludget/routes/sizedbox.dart';
import 'package:fludget/routes/slider.dart';
import 'package:fludget/routes/sliver_grid.dart';
import 'package:fludget/routes/snackbar.dart';
import 'package:fludget/routes/spacer.dart';
import 'package:fludget/routes/stack.dart';
import 'package:fludget/routes/streamBuilder.dart';
import 'package:fludget/routes/switch.dart';
import 'package:fludget/routes/table.dart';
import 'package:fludget/routes/text.dart';
import 'package:fludget/routes/textButton.dart';
import 'package:fludget/routes/textfield.dart';
import 'package:fludget/routes/transform.dart';
import 'package:fludget/routes/togglebutton.dart';
import 'package:fludget/routes/wrap.dart';
import 'Models/widgetModel.dart';
import 'package:fludget/routes/cupertino_widgets.dart';
import 'routes/autoComplete.dart';
import 'routes/BottomNavigationBar.dart';

const List<WidgetModel> widgets = [
  WidgetModel(
      name: "Container",
      implementation: ContainerImplementation(),
      description: ContainerDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Container-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: ContainerCode()),
  WidgetModel(
      name: "Column",
      implementation: ColumnImplementation(),
      description: ColumnDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Column-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: ColumnCode()),
  WidgetModel(
      name: "Row",
      implementation: RowImplementation(),
      description: RowDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Row-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: RowCode()),
  WidgetModel(
      name: "Stack",
      implementation: StackImplementation(),
      description: StackDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Stack-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: StackCode()),
  WidgetModel(
      name: "Text",
      implementation: TextImplementation(),
      description: TextDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Text-class.html",
      category: [WidgetCategoy.Text, WidgetCategoy.Basics],
      codeString: TextCode()),
  WidgetModel(
      name: "Sized Box",
      implementation: SizedboxImplementation(),
      description: SizedboxDescription(),
      link: "https://api.flutter.dev/flutter/widgets/SizedBox-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: SizedBoxCode()),
  WidgetModel(
      name: "Future Builder",
      implementation: FutureBuilderImplementation(),
      description: FutureBuilderDescription(),
      link: "https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Async],
      codeString: FutureBuilderCode()),
  WidgetModel(
      name: "FormField",
      implementation: FormFieldImplementation(),
      description: FormFieldDescription(),
      link: "https://api.flutter.dev/flutter/widgets/FormField-class.html",
      category: [
        WidgetCategoy.Input,
        WidgetCategoy.Interaction,
        WidgetCategoy.Text
      ],
      codeString: FormFieldCode()),
  WidgetModel(
      name: "IgnorePointer",
      implementation: IgnorePointerImplementation(),
      description: IgnorePointerDescription(),
      link: "https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html",
      category: [
        WidgetCategoy.Input,
        WidgetCategoy.Interaction,
      ],
      codeString: IgnorePointerCode()),
  WidgetModel(
      name: "DatePickerDialog",
      implementation: DatePickerDialogImplementation(),
      description: DatePickerDialogDescription(),
      link:
          "https://api.flutter.dev/flutter/material/DatePickerDialog-class.html",
      category: [
        WidgetCategoy.Input,
        WidgetCategoy.Interaction,
      ],
      codeString: DatePickerCode()),
  WidgetModel(
      name: "Icon",
      implementation: IconImplementation(),
      description: IconDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Icon-class.html",
      category: [WidgetCategoy.Assets, WidgetCategoy.Basics],
      codeString: IconCode()),
  WidgetModel(
      name: "Image",
      subtitle: "Asset Image, Network Image, File Image and Memory Image",
      implementation: ImageImplementation(),
      description: ImageDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Image-class.html",
      category: [WidgetCategoy.Assets, WidgetCategoy.Basics],
      codeString: ImageCode()),
  WidgetModel(
      name: "Outlined Button",
      implementation: OutlinedButtonImplimentation(),
      description: OutlinedButtonDescription(),
      link:
          "https://api.flutter.dev/flutter/material/OutlinedButton-class.html",
      category: [WidgetCategoy.Input, WidgetCategoy.Basics],
      codeString: OutlinedButtonCode()),
  WidgetModel(
      name: "Elevated Button",
      implementation: ElevatedButtonImplimentation(),
      description: ElevatedButtonDescription(),
      link:
          "https://api.flutter.dev/flutter/material/ElevatedButton-class.html",
      category: [WidgetCategoy.Input, WidgetCategoy.Basics],
      codeString: ElevatedButtonCode()),
  WidgetModel(
      name: "Text Button",
      implementation: TextButtonImplimentation(),
      description: TextButtonDescription(),
      link: "https://api.flutter.dev/flutter/material/TextButton-class.html",
      category: [WidgetCategoy.Input, WidgetCategoy.Basics],
      codeString: TextButtonCode()),
  WidgetModel(
      name: "Floating Action Button",
      implementation: FloatingActionButtonImplimentation(),
      description: FloatingActionButtonDescription(),
      link:
          "https://api.flutter.dev/flutter/material/FloatingActionButton-class.html",
      category: [WidgetCategoy.Input, WidgetCategoy.Basics],
      codeString: FABCode()),
  WidgetModel(
      name: "TabBar",
      implementation: TabBarImplementation(),
      description: TabBarDescription(),
      link:
          "https://api.flutter.dev/flutter/material/TabBar-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Scrolling],
      codeString: TabBarCode()),
  WidgetModel(
      name: "Toggle Button",
      implementation: ToggleButtonImplementation(),
      description: ToggleButtonDescription(),
      link: "https://api.flutter.dev/flutter/material/ToggleButtons-class.html",
      category: [WidgetCategoy.Input, WidgetCategoy.Basics],
      codeString: ToggleButtonCode()),
  WidgetModel(
      name: "DialogBox",
      subtitle: "shows Dialog",
      implementation: DialogBoxImplementation(),
      description: DialogBoxDescription(),
      link: "https://api.flutter.dev/flutter/material/AlertDialog-class.html",
      category: [WidgetCategoy.Input],
      codeString: DialogBoxCode()),
  WidgetModel(
      name: "GridList",
      implementation: GridListImplementation(),
      description: GridListDescription(),
      link: "https://api.flutter.dev/flutter/widgets/GridView-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: GridListCode()),
  WidgetModel(
      name: "Switch",
      subtitle: "Toggle Switch",
      implementation: SwitchImplementation(),
      description: SwitchDescription(),
      link: "https://api.flutter.dev/flutter/material/Switch-class.html",
      category: [WidgetCategoy.Input],
      codeString: SwitchCode()),
  WidgetModel(
      name: "TextField",
      subtitle: "Input field for username and password",
      implementation: TextFieldImplementation(),
      description: TextFielDescription(),
      link: "https://api.flutter.dev/flutter/material/TextField-class.html",
      category: [WidgetCategoy.Text, WidgetCategoy.Input],
      codeString: TextFieldCode()),
  WidgetModel(
      name: "Card",
      implementation: CardImplementation(),
      description: CardDescription(),
      link: "https://api.flutter.dev/flutter/material/Card-class.html",
      category: [WidgetCategoy.Material, WidgetCategoy.Basics],
      codeString: CardCode()),
  WidgetModel(
      name: "Opacity",
      implementation: OpacityImplementation(),
      description: OpacityDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Opacity-class.html",
      category: [WidgetCategoy.Painting, WidgetCategoy.Effects],
      codeString: OpacityCode()),
  WidgetModel(
      name: "Table",
      implementation: TableImplementation(),
      description: TableDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Table-class.html",
      category: [WidgetCategoy.Layout],
      codeString: TableCode()),
  WidgetModel(
      name: "Expanded",
      implementation: ExpandedImplementation(),
      description: ExpandedDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Expanded-class.html",
      category: [WidgetCategoy.Layout],
      codeString: ExpandedCode()),
  WidgetModel(
      name: "ReOrderableListView",
      subtitle: "A Reorderable List",
      implementation: ReOrderableListViewImplementation(),
      description: ReOrderableListViewDescription(),
      link:
          "https://api.flutter.dev/flutter/material/ReorderableListView-class.html",
      category: [WidgetCategoy.Layout],
      codeString: ReOrdListviewCode()),
  WidgetModel(
      name: "DropDownButton",
      implementation: DropDownButtonSample(),
      description: DropDownButtonDescription(),
      link:
          "https://api.flutter.dev/flutter/material/DropdownButton -class.html",
      category: [WidgetCategoy.Input],
      codeString: DropDownCode()),
  WidgetModel(
      name: "Wrap",
      subtitle: "Wrap Widget",
      implementation: WrapWidget(),
      description: WrapWidgetDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Wrap-class.html",
      category: [WidgetCategoy.Layout],
      codeString: WrapCode()),
  WidgetModel(
      name: "Hero",
      subtitle: "Hero Animation between widgets",
      implementation: HeroWidget(),
      description: HeroWidgetDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Hero-class.html",
      category: [WidgetCategoy.Animation],
      codeString: HeroCode()),
  WidgetModel(
      name: "SnackBar",
      subtitle: "SnackBar Widget",
      implementation: SnackBarImplementation(),
      description: SnackBarDescription(),
      link: "https://api.flutter.dev/flutter/material/SnackBar-class.html",
      category: [WidgetCategoy.Material],
      codeString: SnackBarCode()),
  WidgetModel(
      name: "DataTable",
      subtitle: "Data Table  widgets",
      implementation: DatatableWidget(),
      description: DataTableWidgetDescription(),
      link: "https://api.flutter.dev/flutter/material/DataTable-class.html",
      category: [WidgetCategoy.Layout],
      codeString: DataTableCode()),
  WidgetModel(
      name: "CheckboxListTile",
      subtitle: "A ListTile with a Checkbox",
      implementation: CheckboxListTileWidget(),
      description: CheckboxListTileWidgetDescription(),
      link:
          "https://api.flutter.dev/flutter/material/CheckboxListTile-class.html",
      category: [WidgetCategoy.Input],
      codeString: CheckBoxListTileCode()),
  WidgetModel(
      name: "List Tile",
      implementation: ListTileSample(),
      description: ListTileDescription(),
      link: "https://api.flutter.dev/flutter/material/ListTile-class.html",
      category: [WidgetCategoy.Layout, WidgetCategoy.Material],
      codeString: ListTileCode()),
  WidgetModel(
      name: "RichText",
      subtitle: "Rich Text widget",
      implementation: RichTextWidget(),
      description: RichTextWidgetDescription(),
      link: "https://api.flutter.dev/flutter/widgets/RichText-class.html",
      category: [WidgetCategoy.Text],
      codeString: RichTextCode()),
  WidgetModel(
      name: "Slider",
      implementation: SliderSample(),
      description: SliderDescription(),
      link: "https://api.flutter.dev/flutter/material/Slider-class.html",
      category: [WidgetCategoy.Input, WidgetCategoy.Material],
      codeString: SliderCode()),
  WidgetModel(
      name: "AnimatedBuilder Widget",
      subtitle: "Implement Animations",
      implementation: AnimatedBuilderWidget(),
      description: AnimatedBuilderDescription(),
      link:
          "https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html",
      category: [WidgetCategoy.Animation],
      codeString: AnimatedBuilderCode()),
  WidgetModel(
      name: "Transform",
      link: "https://api.flutter.dev/flutter/widgets/Transform-class.html",
      implementation: TransformImplementation(),
      description: TransformDescription(),
      category: [WidgetCategoy.Painting, WidgetCategoy.Effects],
      codeString: TransformCode()),
  WidgetModel(
      name: "DraggableScrollableSheet Widget",
      subtitle: "Implementation for DraggableScrollableSheet in flutter",
      implementation: DraggableScrollSheet(),
      description: DraggableScrollSheetDesc(),
      link:
          "https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html",
      category: [WidgetCategoy.Material],
      codeString: DraggableCode()),
  WidgetModel(
      name: "Dismissible",
      subtitle: "Remove any List Item",
      implementation: DismissibleSample(),
      description: DismissibleDescription(),
      link: "https://api.flutter.dev/flutter/widgets/Dismissible-class.html",
      category: [WidgetCategoy.Basics],
      codeString: DismissibleCode()),
  WidgetModel(
      name: "Page View",
      implementation: pageViewSample(),
      description: PageViewDescription(),
      link: "https://api.flutter.dev/flutter/widgets/PageView-class.html",
      category: [WidgetCategoy.Layout],
      codeString: PageViewCode()),
  WidgetModel(
      name: "Linear Progress Indicator",
      link:
          "https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html",
      implementation: LinearProgressIndicatorSample(),
      description: LinearProgressIndicatorDescription(),
      category: [WidgetCategoy.Effects],
      codeString: LinearProgressIndicatorCode()),
  WidgetModel(
      name: "Circular Progress Indicator",
      link:
          "https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html",
      implementation: CircularProgressIndicatorSample(),
      description: CircularProgressIndicatorDescription(),
      category: [WidgetCategoy.Effects],
      codeString: CircularProgressIndicatorCode()),
  WidgetModel(
      name: "Draggable Widget",
      link: "https://api.flutter.dev/flutter/widgets/Draggable-class.html",
      implementation: DraggableSample(),
      description: DraggableDescription(),
      category: [WidgetCategoy.Interaction],
      codeString: DraggableWidgetCode()),
  WidgetModel(
      name: "Flexible",
      link: "https://api.flutter.dev/flutter/widgets/Flexible-class.html",
      implementation: FlexibleWidget(),
      description: FlexibleDescription(),
      category: [WidgetCategoy.Layout],
      codeString: FlexibleCode()),
  WidgetModel(
      name: "ColorFiltered",
      link: "https://api.flutter.dev/flutter/widgets/ColorFiltered-class.html",
      implementation: ColourFilteredWidget(),
      description: ColourFilteredWidgetDescription(),
      category: [WidgetCategoy.Effects, WidgetCategoy.Painting],
      codeString: ColorFilteredCode()),
  WidgetModel(
      name: "IndexedStack",
      link: "https://api.flutter.dev/flutter/widgets/IndexedStack-class.html",
      implementation: IndexedStackImplemention(),
      description: IndexedStackDescription(),
      category: [WidgetCategoy.Layout],
      codeString: IndexedStackCode()),
  WidgetModel(
      name: "CupertinoActionSheet",
      link:
          "https://api.flutter.dev/flutter/cupertino/CupertinoActionSheet-class.html",
      implementation: CupertinoActionSheetImplementation(),
      description: CupertinoActionSheetDescription(),
      category: [WidgetCategoy.Cupertino, WidgetCategoy.Material],
      codeString: CupertinoActionSheetCode()),
  WidgetModel(
      name: "AnimatedIcon",
      link: "https://api.flutter.dev/flutter/material/AnimatedIcon-class.html",
      implementation: AnimatedIconSample(),
      description: AnimatedIconDescription(),
      category: [WidgetCategoy.Animation],
      codeString: AnimatedIconCode()),
  WidgetModel(
      name: "About Dialog",
      subtitle: "Implementation of aboutDialog()",
      link: "https://api.flutter.dev/flutter/material/AboutDialog-class.html",
      implementation: AboutDialogImp(),
      description: AboutDialogDesc(),
      category: [WidgetCategoy.Basics],
      codeString: AboutDialogCode()),
  WidgetModel(
    name: "Cupertino Activity Indicator",
    link:
        "https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html",
    implementation: CupertinoActivityIndicatorSample(),
    description: CupertinoActivityIndicatorDescription(),
    category: [WidgetCategoy.Cupertino],
    codeString: CupertinoActivityCode(),
  ),
  WidgetModel(
      name: "AbsorbPointer",
      subtitle: "Implementation of AbsorbPointer Widget",
      link: "https://api.flutter.dev/flutter/widgets/AbsorbPointer-class.html",
      implementation: AbsorbPointerWidget(),
      description: AbsorbPointerWidgetDescription(),
      category: [WidgetCategoy.Interaction],
      codeString: AbsorbPointerCode()),
  WidgetModel(
      name: "ListWheelScrollView",
      subtitle: "Implementation of ListWheelScrollView Widget",
      link:
          "https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html",
      implementation: ListWheelScrollViewWidget(),
      description: ListWheelScrollViewDescription(),
      category: [WidgetCategoy.Scrolling],
      codeString: ListWheelCode()),
  WidgetModel(
      name: "RefreshIndicator",
      subtitle: "Implementation of RefreshIndicator Widget",
      link:
          "https://api.flutter.dev/flutter/material/RefreshIndicator-class.html",
      implementation: MyRefreshIndicator(),
      description: MyRefreshIndicatorDesc(),
      category: [WidgetCategoy.Effects],
      codeString: RefreshIndicatorCode()),
  WidgetModel(
      name: "Spacer",
      subtitle: "Implementation of Spacer Widget",
      link: "https://api.flutter.dev/flutter/widgets/Spacer-class.html",
      implementation: SpacerImplementation(),
      description: SpacerDescription(),
      category: [WidgetCategoy.Layout],
      codeString: SpacerCode()),
  WidgetModel(
      name: "SliverAppBar",
      subtitle: "Implementation of SliverAppBar Widget",
      link: "https://api.flutter.dev/flutter/material/SliverAppBar-class.html",
      implementation: MySliverAppBar(),
      description: MySliverAppBarDescription(),
      category: [WidgetCategoy.Scrolling, WidgetCategoy.Accessibility],
      codeString: SliverAppBarCode()),
  WidgetModel(
      name: "AppBar",
      subtitle: "Implementation of AppBar Widget",
      link: "https://api.flutter.dev/flutter/material/AppBar-class.html",
      implementation: appbarsample(),
      description: appbardescription(),
      category: [WidgetCategoy.Layout, WidgetCategoy.Interaction],
      codeString: AppBarCode()),
  WidgetModel(
      name: "Animated List",
      subtitle: "Implementation of Animated List Widget",
      link: "https://api.flutter.dev/flutter/widgets/AnimatedList-class.html",
      implementation: AnimatedListWidget(),
      description: AnimatedListDescription(),
      category: [WidgetCategoy.Animation],
      codeString: AnimatedListCode()),
  WidgetModel(
      category: [WidgetCategoy.Layout, WidgetCategoy.Scrolling],
      name: "Sliver Grid",
      link: "https://api.flutter.dev/flutter/widgets/SliverGrid-class.html",
      implementation: SliverGridSample(),
      description: SliverGridDescription(),
      codeString: SliverGridCode()),
  WidgetModel(
      name: "ScrollBar",
      subtitle: "Implementation of ScrollBar Widget",
      link: "https://api.flutter.dev/flutter/material/Scrollbar-class.html",
      implementation: ScrollBarImplementation(),
      description: ScrollBarDescription(),
      category: [WidgetCategoy.Scrolling, WidgetCategoy.Interaction],
      codeString: ScrollbarCode()),
  WidgetModel(
      name: "Gesture Detector",
      link:
          "https://api.flutter.dev/flutter/widgets/GestureDetector-class.html",
      implementation: GestureDetectorSample(),
      description: GestureDetectorDescription(),
      category: [WidgetCategoy.Input, WidgetCategoy.Interaction],
      codeString: GestureDetectorCode()),
  WidgetModel(
      name: "NestedScrollView",
      subtitle: "Implementation of NestedScrollView widget",
      link:
          "https://api.flutter.dev/flutter/widgets/NestedScrollView-class.html",
      implementation: NestedScrollViewImplementation(),
      description: NestedScrollViewDescription(),
      category: [WidgetCategoy.Scrolling, WidgetCategoy.Interaction],
      codeString: NestedScrollViewCode()),
  WidgetModel(
      name: "Stream Builder",
      subtitle: "Implementation of StreamBuilder widget",
      link: "https://api.flutter.dev/flutter/widgets/StreamBuilder-class.html",
      implementation: StreamBuilderWidget(),
      description: StreamBuilderDescription(),
      category: [WidgetCategoy.Interaction, WidgetCategoy.Async],
      codeString: StreamBuilderCode()),
  WidgetModel(
      name: "ClipOval",
      subtitle: "Implementation of ClipOval widget",
      link: "https://api.flutter.dev/flutter/widgets/ClipOval-class.html",
      implementation: ClipOvalSample(),
      description: ClipOvalDescription(),
      category: [WidgetCategoy.Effects, WidgetCategoy.Painting],
      codeString: ClipOvalCode()),
  WidgetModel(
      name: "ClipRect",
      link: "https://api.flutter.dev/flutter/widgets/ClipRect-class.html",
      implementation: ClipRectImplementation(),
      description: ClipRectDescription(),
      category: [WidgetCategoy.Painting],
      codeString: ClipRectCode()),
  WidgetModel(
      name: "Cupertino Widgets",
      subtitle: "Implementation of Cupertino Widgets (iOS style widgets)",
      link: "https://flutter.dev/docs/development/ui/widgets/cupertino",
      implementation: CupertinoWidgets(),
      description: CupertinoWidgetsDescription(),
      category: [WidgetCategoy.Cupertino],
      codeString: CupertinoWidgetsCode()),
  WidgetModel(
      name: "AutoComplete",
      subtitle: "Implementation of Autocomplete Widget",
      link: "https://api.flutter.dev/flutter/material/Autocomplete-class.html",
      implementation: AutoCompleteImplemention(),
      description: AutoCompleteWidgetDescription(),
      category: [WidgetCategoy.Input, WidgetCategoy.Interaction],
      codeString: AutoCompleteCode()),
  WidgetModel(
      name: "DecoratedBox",
      link: "https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html",
      implementation: DecoratedBoxImplementation(),
      description: DecoratedBoxDescription(),
      category: [WidgetCategoy.Painting],
      codeString: DecoratedBoxCode()),
  WidgetModel(
      name: "Clip Path",
      link:
          "https://api.flutter.dev/flutter/widgets/ClipPath-class.html#:~:text=ClipPath%20class%20Null%20safety,from%20painting%20outside%20the%20path.",
      subtitle: "Implementation of Clip Path widget",
      implementation: ClipPathImplementation(),
      description: ClipPathDescription(),
      category: [
        WidgetCategoy.Painting,
        WidgetCategoy.Styling,
      ],
      codeString: ClipPathCode()),
  WidgetModel(
    name: "SingleChildScrollView",
    link:
        "https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html",
    implementation: SingleChildScrollViewImplementation(),
    description: SingleChildScrollViewDescription(),
    category: [WidgetCategoy.Scrolling], codeString: SinglechildScrollViewCode(),
  ),
  WidgetModel(
    name: "CustomPaint",
    link: "https://api.flutter.dev/flutter/widgets/CustomPaint-class.html",
    subtitle: "Implementation of CustomPaint widget",
    implementation: CustomPaintWidget(),
    description: CustomPaintDescription(),
    category: [WidgetCategoy.Painting],
    codeString:CustomPaintCode() ,
  ),
  WidgetModel(
      name: "SingleChildScrollView",
      link:
          "https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html",
      implementation: SingleChildScrollViewImplementation(),
      description: SingleChildScrollViewDescription(),
      category: [WidgetCategoy.Scrolling],
      codeString: SinglechildScrollViewCode()),
  WidgetModel(
      name: "Error",
      implementation: ErrorWidgetImplementation(),
      description: ErrorWidgetDescription(),
      link: "https://api.flutter.dev/flutter/widgets/ErrorWidget-class.html",
      category: [WidgetCategoy.Assets, WidgetCategoy.Basics],
      codeString: ErrorCode()),
  WidgetModel(
      name: "ClipRRect",
      implementation: ClipRRectImplementation(),
      description: ClipRRectDescription(),
      link: "hhttps://api.flutter.dev/flutter/widgets/ClipRRect-class.html",
      category: [WidgetCategoy.Assets, WidgetCategoy.Basics],
      codeString: BannerCode(),),
WidgetModel(
      name: "ColoredBox",
      link: "https://api.flutter.dev/flutter/widgets/ColoredBox-class.html",
      implementation: ColoredBoxImplementation(),
      description: ColoredBoxDescription(),
      category: [WidgetCategoy.Layout, WidgetCategoy.Basics],
      codeString: ColoredBoxCode()),
  WidgetModel(
      name: "FadeInImage",
      link: "https://flutter.dev/docs/cookbook/images/fading-in-images",
      subtitle: "Implementation of FadeInImage widget",
      implementation: FadeInImageImplementation(),
      description: FadeInImageDescription(),
      category: [
        WidgetCategoy.Interaction,
        WidgetCategoy.Animation,
      ],
      codeString: FadeInImgCode()),
  WidgetModel(
      name: "Grid Paper",
      implementation: GridPaperImplementation(),
      description: GridPaperDescription(),
      link: "https://api.flutter.dev/flutter/widgets/GridPaper-class.html",
      category: [WidgetCategoy.Layout],
      codeString: GridPaperCode()),
  WidgetModel(
      name: "BottomNavigationBar",
      subtitle: "Implementation of BottomNavigationBar Widget",
      implementation: BottomNavigationBarImplementation(),
      description: BottomNavigationBarDescription(),
      link:
          "https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html",
      category: [WidgetCategoy.Animation],
      codeString: BottomNavigationBarCode()),
  WidgetModel(
    name: "Banner Widget",
    link: "https://api.flutter.dev/flutter/widgets/Banner-class.html",
    subtitle: "Implementation of Banner widget",
    implementation: BannerImplementation(),
    description: BannerDescription(),
    category: [
      WidgetCategoy.Interaction,
      WidgetCategoy.Animation,
      WidgetCategoy.Styling,
    ],
    codeString: BannerCode(),
  ),
  WidgetModel(
    name: "Placeholder Widget",
    link:
        "https://api.flutter.dev/flutter/widgets/Placeholder-class.html#:~:text=Placeholder%20class%20Null%20safety,sized%20to%20fit%20its%20container.",
    subtitle: "Implementation of Placeholder widget",
    implementation: PlaceHolderImplementation(),
    description: PlaceHolderDescription(),
    category: [
      WidgetCategoy.Styling,
    ],
    codeString: PlaceHolderCode(),
  ),
  WidgetModel(
    name: "Drawer Widget",
    link: "https://api.flutter.dev/flutter/material/Drawer-class.html",
    subtitle: "Implementation of Drawer widget",
    implementation: DrawerImplementation(),
    description: DrawerDescription(),
    category: [
      WidgetCategoy.Material,
    ],
    codeString: DrawerCode(),
  ),
];
