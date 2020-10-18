import 'package:fish_redux/fish_redux.dart';

class MainState implements Cloneable<MainState> {
  int currentIndex = 0;

  @override
  MainState clone() {
    return MainState()..currentIndex = currentIndex;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState()..currentIndex = 0;
}
