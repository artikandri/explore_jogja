// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jogja/screens/home/home_screen.dart';
import 'package:jogja/providers/language_provider.dart';
import 'package:jogja/providers/review_provider.dart';
import 'package:jogja/routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ChangeNotifierProvider(create: (_) => ReviewProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Consumer<LanguageProvider>(
      builder: (BuildContext context, LanguageProvider languageProvider,
          Widget? child) {
        return MaterialApp(
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
          localizationsDelegates: [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale(languageProvider.getLanguageCode(), ''),
          supportedLocales: [
            const Locale('en', ''),
            const Locale('id', ''),
          ],
          theme: ThemeData.light(),
          home: HomeScreen(),
          initialRoute: HomeScreen.routeName,
          routes: routes,
        );
      },
    );
  }
}
