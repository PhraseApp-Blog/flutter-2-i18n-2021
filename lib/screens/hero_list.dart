import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_i18n_2021/widgets/hero_card.dart';

class HeroList extends StatelessWidget {
  final String title;

  HeroList({this.title = ''});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: t.openSettings,
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(t.heroCount(6)),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  HeroCard(
                    name: t.hopperName,
                    born: '9 December 1906',
                    bio: t.hopperBio,
                    imagePath: 'assets/images/grace_hopper.jpg',
                  ),
                  HeroCard(
                    name: t.turingName,
                    born: '23 June 1912',
                    bio: t.turingBio,
                    imagePath: 'assets/images/alan_turing.jpg',
                  ),
                  HeroCard(
                    name: t.liskovName,
                    born: '7 November 1939',
                    bio: t.liskovBio,
                    imagePath: 'assets/images/barbara_liskov.jpg',
                  ),
                  HeroCard(
                    name: t.wozniakName,
                    born: '11 August 1950',
                    bio: t.wozniakBio('Apple I', 'Apple II'),
                    imagePath: 'assets/images/steve_wozniak.jpg',
                  ),
                  HeroCard(
                    name: t.bernersLeeName,
                    born: '8 June 1955',
                    bio: t.bernersLeeBio,
                    imagePath: 'assets/images/tim_berners_lee.jpg',
                  ),
                  HeroCard(
                    name: t.gatesName,
                    born: '28 October 1955',
                    bio: t.gatesBio('Microsoft Corporation'),
                    imagePath: 'assets/images/bill_gates.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
