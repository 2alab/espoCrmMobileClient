import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LeadsState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      child: FlatButton(
    child: Text("Залогинится"),
    onPressed: () => dispatch(LeadsActionCreator.onAction()),
  ));
}
