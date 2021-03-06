import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en'), // Inglés
          const Locale('es'), // Español
        ],
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // cuando la ruta que se llama no está definida se llama a este método:
      onGenerateRoute: ( RouteSettings settings ) {
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => AlertPage()
        );
      },
    );
  }
}