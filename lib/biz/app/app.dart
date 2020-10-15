import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/biz/app/route.dart';

Widget createApp() {
  return MaterialApp(
    title: 'demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
    //配置默认页面为OnePage
    home: RouteConfig.ROUTES.buildPage(RouteConfig.LOGIN_PAGE_PATH, null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return RouteConfig.ROUTES.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
