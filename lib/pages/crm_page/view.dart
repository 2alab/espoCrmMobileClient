import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CrmState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('EspoCRM'),
    ),
    body: Center(child: Text("stub ${state.selectedPage}")),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.rss_feed),
          title: Text('Лента'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Кандидаты'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pan_tool),
          title: Text('Инструменты'),
        ),
      ],
      currentIndex: state.selectedPage,
      selectedItemColor: Colors.amber[800],
      onTap: (tabId) => dispatch(CrmActionCreator.onSelectTab(tabId)),
    ),
  );
}
