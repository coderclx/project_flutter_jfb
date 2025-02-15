import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeScreenComponent extends Component<HomeScreenState> {
  static final String HomeScreenComponentKEY = 'HomeScreenComponentKEY';
  HomeScreenComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<HomeScreenState>(
              adapter: null, slots: <String, Dependent<HomeScreenState>>{}),
        );
}
