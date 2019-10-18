import 'package:fish_redux/fish_redux.dart';

class LeadsState implements Cloneable<LeadsState> {

  @override
  LeadsState clone() {
    return LeadsState();
  }
}

LeadsState initState(Map<String, dynamic> args) {
  return LeadsState();
}
