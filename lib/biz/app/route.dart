import 'package:fish_redux/fish_redux.dart';
import 'package:project_flutter_jfb/biz/home/home_page/page.dart';
import 'package:project_flutter_jfb/biz/login/login_page/page.dart';
import 'package:project_flutter_jfb/biz/main/main_page/page.dart';
import 'package:project_flutter_jfb/biz/person/person_page/page.dart';

class RouteConfig {
  static final String LOGIN_PAGE_PATH = "login_page_path";
  static final String MAIN_PAGE_PATH = "main_page_path";
  static final String PERSON_PAGE_PATH = "person_page_path";
  static final String HOME_PAGE_PATH = "person_page_path";
  static final AbstractRoutes ROUTES =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    RouteConfig.LOGIN_PAGE_PATH: LoginPage(),
    RouteConfig.MAIN_PAGE_PATH: MainPage(),
    RouteConfig.PERSON_PAGE_PATH: PersonPage(),
    RouteConfig.HOME_PAGE_PATH: HomePage()
  }, visitor: (String path, Page<Object, dynamic> page) {});
}
