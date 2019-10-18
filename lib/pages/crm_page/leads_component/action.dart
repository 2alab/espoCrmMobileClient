import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LeadsAction { action }

class LeadsActionCreator {
  static Action onAction() {
    return const Action(LeadsAction.action);
  }
}
