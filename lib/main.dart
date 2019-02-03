import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:demo_flutter/pages/movie-page.dart';
import 'package:demo_flutter/pages/map-page.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  void _updateText() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_movies)),
                Tab(icon: Icon(Icons.map)),
              ],
            ),
            title: Text('Flutter Demo'),
          ),
          body: TabBarView(
            children: [
              new MoviePage(),
              new MapPage(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _updateText,
            tooltip: 'Update Text',
            child: Icon(Icons.update),
          ),
        ),
      ),
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('fr', 'FR'), // Hebrew
        // ... other locales the app supports
      ],
    );
  }
}
