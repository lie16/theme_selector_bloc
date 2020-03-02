import 'package:flutter/material.dart';
import 'package:theme_with_bloc/theme/theme_bloc.dart';
import 'package:theme_with_bloc/theme/theme_selector_page.dart';

class HomePage extends StatelessWidget {
  final ThemeBloc themeBloc;

  const HomePage({Key key, this.themeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.list,
            ),
            tooltip: 'Theme selector',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ThemeSelectorPage(
                        themeBloc: themeBloc,
                      )));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // do nothing
        },
        child: Icon(
          Icons.done,
        ),
      ),
      body: Center(
        child: Text(
          'Wow! Flutter is awesome!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
