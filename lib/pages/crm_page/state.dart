import 'package:fish_redux/fish_redux.dart';

class CrmState implements Cloneable<CrmState> {

  @override
  CrmState clone() {
    return CrmState();
  }
}

CrmState initState(Map<String, dynamic> args) {
  return CrmState();
}
