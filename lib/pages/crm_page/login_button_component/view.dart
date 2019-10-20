import 'package:espo_contacts/pages/login_page/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    LoginButtonState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: FlatButton(
          child: Text("Войти"),
          onPressed: () =>
              dispatch(LoginButtonActionCreator.onShowLoginForm())),
    ),
  );
}
