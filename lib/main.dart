import 'package:flutter/material.dart';
import 'package:flutter_news_app/dashboard_page.dart';
import 'route_generator.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(
    const Duration(seconds: 3),
  );
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage() ,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteGenerator.dashboardPage,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
