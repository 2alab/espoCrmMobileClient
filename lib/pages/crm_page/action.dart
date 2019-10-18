import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CrmAction { action }

class CrmActionCreator {
  static Action onAction() {
    return const Action(CrmAction.action);
  }
}
