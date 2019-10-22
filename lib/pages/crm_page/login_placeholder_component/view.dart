import 'package:espo_contacts/pages/crm_page/action.dart';
import 'package:espo_contacts/pages/crm_page/login_dialog_component/action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    LoginPlaceholderState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      child: Center(
    child: FlatButton(
      key: Key("loginButton"),
      child: Text("Войти"),
      onPressed: () => dispatch(LoginPlaceholderActionCreator.onShowLoginForm()),
    ),
  ));
}
