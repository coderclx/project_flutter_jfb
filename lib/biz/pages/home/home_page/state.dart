import 'package:fish_redux/fish_redux.dart';
import 'package:project_flutter_jfb/biz/bean/user.dart';
import 'package:project_flutter_jfb/components/home_screen_component/state.dart';

class HomeState implements Cloneable<HomeState> {
  User user;
  @override
  HomeState clone() {
    return HomeState()..user = user;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..user = User.fromJson({
      "id": 0,
      "name": "mym",
      "age": 23,
      "currentChild": {"id": 0, "name": "ml", "age": 23},
      "childs": [
        {"id": 0, "name": "ml", "age": 23},
        {"id": 1, "name": "ml", "age": 23}
      ]
    });
}

class HomeScreenComponentConnector extends ConnOp<HomeState, HomeScreenState>
    with ReselectMixin<HomeState, HomeScreenState> {
  @override
  HomeScreenState computed(HomeState state) {
    return HomeScreenState()..currentChild = state.user.currentChild;
  }
}
