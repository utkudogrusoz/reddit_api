import 'package:flutter/material.dart';
import 'package:reddit_api/core/constants/path/navigation_constant.dart';
import 'package:reddit_api/features/pages/home/view/home_view.dart';


class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstant.HOME_VIEW:
        return normalNavigate(HomeView());
      case NavigationConstant.DETAIL_VIEW:
        return normalNavigate(Container()); // Detay Sayfası Olmadığı için Container Döndürdüm
      default:
        return nullPage();
    }
  }

  MaterialPageRoute<dynamic> nullPage() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text('Boş Sayfa'),
        ),
      ),
    );
  }

  MaterialPageRoute<dynamic> normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
