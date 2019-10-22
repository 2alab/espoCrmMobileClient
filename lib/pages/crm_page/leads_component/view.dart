import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LeadsState state, Dispatch dispatch, ViewService viewService) {
  if (state.isNotAuthorised()) {
    var buildComponent = viewService.buildComponent("login_button");
    return buildComponent;
  }

  return Container(key: Key("stub"), child: Text("Какой то контент"));
}
