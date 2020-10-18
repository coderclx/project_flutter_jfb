import 'package:fish_redux/fish_redux.dart';
import 'package:project_flutter_jfb/biz/bean/user.dart';

class HomeScreenState implements Cloneable<HomeScreenState> {
  Child currentChild;

  @override
  HomeScreenState clone() {
    return HomeScreenState()..currentChild = currentChild;
  }
}

HomeScreenState initState(Map<String, dynamic> args) {
  return HomeScreenState();
}
