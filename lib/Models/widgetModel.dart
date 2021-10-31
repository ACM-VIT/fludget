import 'package:fludget/Models/codeString.dart';
import 'package:flutter/widgets.dart';

enum WidgetCategory {
  Layout,
  Async,
  Accessibility,
  Basics,
  Cupertino,
  Input,
  Material,
  Scrolling,
  Styling,
  Text,
  Animation,
  Assets,
  Interaction,
  Painting,
  Effects
}

class WidgetModel {
  final String name, subtitle, link;
  final Widget implementation;
  final Widget description;
  final List<WidgetCategory> category;
  final CodeString codeString;
  const WidgetModel(
      {required this.name,
      this.subtitle = '',
      required this.link,
      required this.implementation,
      required this.description,
      required this.category,
      required this.codeString});
}
