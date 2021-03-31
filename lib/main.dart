import 'package:flutter/material.dart';
import 'package:flutter_i18n_2021/screens/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'screens/hero_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) {
        return AppLocalizations.of(context).appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) {
          return HeroList(title: AppLocalizations.of(context).appTitle);
        },
        '/settings': (context) => Settings(),
      },
    );
  }
}
