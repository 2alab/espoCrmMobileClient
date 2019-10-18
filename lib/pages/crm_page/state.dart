import 'package:fish_redux/fish_redux.dart';

class CrmState implements Cloneable<CrmState> {
  int selectedPage;

  @override
  CrmState clone() {
    return CrmState()..selectedPage = selectedPage;
  }
}

CrmState initState(Map<String, dynamic> args) {
  return CrmState()..selectedPage = 0;
}
