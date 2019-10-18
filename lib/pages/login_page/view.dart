import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    appBar: _buildBar(),
    body: new Container(
      padding: EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          _buildTextFields(),
          _buildButtons(dispatch),
        ],
      ),
    ),
  );
}

Widget _buildBar() {
  return new AppBar(
    title: new Text("Simple Login Example"),
    centerTitle: true,
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

Widget _buildButtons(Dispatch dispatch) {
  return new Container(
    child: new Column(
      children: <Widget>[
        new RaisedButton(
          child: new Text('Login'),
          onPressed: ()=>dispatch(LoginActionCreator.onLogin("test", "test")),
        ),
      ],
    ),
  );
}
