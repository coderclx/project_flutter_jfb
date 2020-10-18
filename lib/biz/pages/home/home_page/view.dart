import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/components/home_screen_component/component.dart';

import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.grey[300],
        leadingWidth: 100,
        leading: Container(
          width: 100,
          child: FlatButton(
              textColor: Colors.grey[300],
              splashColor: Colors.grey[300],
              child: Text(
                "米粒",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.black87),
              ),
              onPressed: () {}),
        )),
    body:
        viewService.buildComponent(HomeScreenComponent.HomeScreenComponentKEY),
  );
}
