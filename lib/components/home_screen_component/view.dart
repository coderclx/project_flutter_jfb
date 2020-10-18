import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    HomeScreenState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.grey[50],
    alignment: Alignment.center,
    child: state.isExistedChild
        ? existedChildContentView()
        : noExistedChildContentView(),
  );
}

Widget existedChildContentView() {
  return Text('已存在孩子');
}

Widget noExistedChildContentView() {
  return RaisedButton(
      color: Colors.green,
      splashColor: Colors.green,
      disabledColor: Colors.green[100],
      child: Text(
        "请添加您的第一个孩子吧",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {});
}
