import 'package:espo_contacts/models/credentials.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    LoginDialogState state, Dispatch dispatch, ViewService viewService) {
  final hostController = TextEditingController(text: state.credentials.host);
  final usernameController =
      TextEditingController(text: state.credentials.username);
  final passwordController =
      TextEditingController(text: state.credentials.password);
  return AlertDialog(
    title: Text("authorization"),
    content: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  if (null != state.errorMessage)
                    Container(
                      child: Text(
                        state.errorMessage,
                        key: Key("errorMessage"),
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  Container(
                    child: TextField(
                      key: Key("host"),
                      decoration: InputDecoration(labelText: 'Host'),
                      controller: hostController,
                    ),
                  ),
                  Container(
                    child: TextField(
                      key: Key("username"),
                      decoration: InputDecoration(labelText: 'Login'),
                      controller: usernameController,
                    ),
                  ),
                  Container(
                    child: TextField(
                      key: Key("password"),
                      decoration: InputDecoration(labelText: 'Password'),
                      controller: passwordController,
                      obscureText: true,
                    ),
                  )
                ],
              ),
            )
          ],
        )),
    actions: <Widget>[
      FlatButton(
        key: Key("closeButton"),
        child: Text("Close"),
        onPressed: () => dispatch(LoginDialogActionCreator.onCloseAuthDialog()),
      ),
      FlatButton(
        key: Key("loginButton"),
        child: Text("Login"),
        onPressed: () => dispatch(LoginDialogActionCreator.onAuth(Credentials(
            hostController.text,
            usernameController.text,
            passwordController.text))),
      )
    ],
  );
}
