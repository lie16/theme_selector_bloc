import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

///
/// Listen to the button events, so when we receive an event
/// we can emit a ThemeData object containing the specs for the selected theme.
///
class MyTheme {
  final String name;
  final ThemeData data;

  const MyTheme(this.name, this.data);
}

class ThemeBloc {
  final Stream<ThemeData> themeDataStream;
  final Sink<MyTheme> selectedTheme;

  factory ThemeBloc() {
    final selectedTheme = PublishSubject<MyTheme>();
    final themeDataStream = selectedTheme.distinct().map((theme) => theme.data);
    return ThemeBloc._(themeDataStream, selectedTheme);
  }

  const ThemeBloc._(this.themeDataStream, this.selectedTheme);

  MyTheme initialTheme() {
    return MyTheme(
        'initial',
        ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.brown,
          primaryColor: Colors.green,
        ));
  }
}
