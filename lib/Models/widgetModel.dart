import 'package:flutter/widgets.dart';

class WidgetModel {
  final String name, subtitle;
  final Widget sample;
  final Widget sampleDescription;
  const WidgetModel({
    required this.name,
    this.subtitle = '',
    required this.sample,
    required this.sampleDescription,
  });
}
