import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',icon: Icons.house_siding_sharp, name: 'HomeScreen', screen: const HomeScreen()),
    MenuOption(route: 'listview1',icon: Icons.list_alt_rounded, name: 'ListView1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2',icon: Icons.line_style_rounded, name: 'ListView2', screen: const ListView2Screen()),
    MenuOption(route: 'card',icon: Icons.card_membership_rounded, name: 'CardScreen', screen: const CardScreen()),
    MenuOption(route: 'alert',icon: Icons.bus_alert, name: 'AlertScreen', screen: const AlertScreen()),
    MenuOption(route: 'cafe',icon: Icons.coffee_maker_rounded, name: 'LoginCafeScreen', screen: const LoginCafeScreen())

  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //Iterador para recorrer routes!
    for (final options in menuOptions){
      appRoutes.addAll({options.route:(BuildContext context) => options.screen});      
    }
      return appRoutes;
  }
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
          builder: (context) => const AlertScreen()
          );
  }
}
