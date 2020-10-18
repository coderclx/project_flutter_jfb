import 'package:fish_redux/fish_redux.dart';

class HomeScreenState implements Cloneable<HomeScreenState> {
  bool isExistedChild;
  @override
  HomeScreenState clone() {
    return HomeScreenState()..isExistedChild = isExistedChild;
  }
}

HomeScreenState initState(Map<String, dynamic> args) {
  return HomeScreenState();
}
