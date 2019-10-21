import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    LoginDialogState state, Dispatch dispatch, ViewService viewService) {
  return AlertDialog(
    title: new Text("authorization"),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildTextFields(),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        child: new Text("Close"),
        onPressed: () => dispatch(LoginDialogActionCreator.onCloseAuthDialog()),
      ),
      FlatButton(
        child: new Text("Login"),
        onPressed: () {},
      )
    ],
  );
}

Widget _buildTextFields() {
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();

  return new Container(
    child: new Column(
      children: <Widget>[
        new Container(
          child: new TextField(
            controller: _emailFilter,
            decoration: new InputDecoration(labelText: 'Email'),
          ),
        ),
        new Container(
          child: new TextField(
            controller: _passwordFilter,
            decoration: new InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
        )
      ],
    ),
  );
}
