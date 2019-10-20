import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LeadsState state, Dispatch dispatch, ViewService viewService) {
  if (state.isNotAuthorised()) {
    return viewService.buildComponent("login_button");
  }

  return Container(child: Text("Какой то контент"));
}
