import 'package:fish_redux/fish_redux.dart';

enum CrmAction { selectTab }

class CrmActionCreator {
  static Action onSelectTab(int tabId) {
    return Action(CrmAction.selectTab, payload: tabId);
  }
}
