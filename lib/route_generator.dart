import 'package:flutter/material.dart';
import 'Sports.dart';
import 'conformsubscription.dart';
import 'cyclearticle.dart';
import 'dashboard_page.dart';
import 'detailedArticle.dart';
import 'intrestpage.dart';
import 'savedarticle.dart';
import 'subscribe_page.dart';
import 'subscribed.dart';

class RouteGenerator {
  static const String dashboardPage = '/';
  static const String subscribePage = '/subscribe';
  static const String interestpage='/interestpage';
  static const String sportspage='/sportspage';
  static const String detailedarticle='/detailedarticle';
  static const String cyclearticle='/cyclearticle';
  static const String conformsubscription='/Conformsubscription';
  static const String subscribed='/subsribed';
   static const String savedarticle='/savedarticle';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case dashboardPage:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case subscribePage:
        return MaterialPageRoute(builder: (_) => const SubscribePage());
         case interestpage:
        return MaterialPageRoute(builder: (_) => const Interestpage());
        case sportspage:
        return MaterialPageRoute(builder: (_) => const Sports());
        case detailedarticle:
        return MaterialPageRoute(builder: (_) => const detailedArticle());
        case cyclearticle:
        return MaterialPageRoute(builder: (_) => const Cyclearticle());
        case conformsubscription:
        return MaterialPageRoute(builder: (_) => const Conformsubscription());
         case subscribed:
        return MaterialPageRoute(builder: (_) => const Subscribed());
         case savedarticle:
        return MaterialPageRoute(builder: (_) => const Savedarticle());
      default:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
    }
  }
}
