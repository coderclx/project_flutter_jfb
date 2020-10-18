import 'package:fish_redux/fish_redux.dart';
import 'package:project_flutter_jfb/components/home_screen_component/state.dart';

class HomeState implements Cloneable<HomeState> {
  bool isExistedChild;
  @override
  HomeState clone() {
    return HomeState()..isExistedChild = isExistedChild;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()..isExistedChild = true;
}

class HomeScreenComponentConnector extends ConnOp<HomeState, HomeScreenState>
    with ReselectMixin<HomeState, HomeScreenState> {
  @override
  HomeScreenState computed(HomeState state) {
    return HomeScreenState()..isExistedChild = state.isExistedChild;
  }
}
