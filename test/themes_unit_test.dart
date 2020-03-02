import 'package:test/test.dart';
import 'package:flutter/material.dart';
import 'package:theme_with_bloc/theme/theme_bloc.dart';

void main() {
  final themeBloc = ThemeBloc();

  group('initial theme', () {
    test('has light brightness', () {
      expect(themeBloc.initialTheme().data.brightness, Brightness.light);
    });

    test('has brown accent color', () {
      expect(themeBloc.initialTheme().data.accentColor, Colors.brown);
    });

    test('has green primary color', () {
      expect(themeBloc.initialTheme().data.primaryColor, Colors.green);
    });
  });

  group('emitting new themes', () {
    test('adding a new selected theme will emit that theme over the stream',
        () {
      final testTheme =
          ThemeData(brightness: Brightness.dark, accentColor: Colors.orange);
      final myTheme = MyTheme('Test', testTheme);
      expectLater(themeBloc.themeDataStream, emitsInOrder([testTheme]));
      themeBloc.selectedTheme.add(myTheme);
      themeBloc.selectedTheme.close();
    });
  });
}
