import 'package:flutter/material.dart';
import 'package:theme_with_bloc/theme/theme_bloc.dart';
import 'package:theme_with_bloc/theme/theme_data.dart';

class ThemeSelectorPage extends StatelessWidget {
  final ThemeBloc themeBloc;

  const ThemeSelectorPage({Key key, this.themeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Selector',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () => themeBloc.selectedTheme.add(buildLightTheme()),
                child: Text(
                  'Light theme',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RaisedButton(
                  onPressed: () =>
                      themeBloc.selectedTheme.add(buildDarkTheme()),
                  child: Text(
                    'Dark theme',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
