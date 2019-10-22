import 'package:espo_contacts/pages/crm_page/login_placeholder_component/action.dart';
import 'package:espo_contacts/pages/crm_page/login_placeholder_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_test/flutter_test.dart';

import 'package:espo_contacts/pages/crm_page/login_placeholder_component/view.dart';
import 'package:mockito/mockito.dart';

class MockLoginPlaceholderState extends Mock implements LoginPlaceholderState {}

class MockViewService extends Mock implements ViewService {}

final loginButton = find.byKey(Key('loginButton'));

void main() {
  MockLoginPlaceholderState state;
  ViewService viewService;
  Dispatch dispatch;

  setUp(() {
    state = MockLoginPlaceholderState();
    viewService = MockViewService();
  });

  testWidgets('Click login button', (WidgetTester tester) async {
    Action dispathAction = null;

    await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: buildView(state, (a) => dispathAction = a, viewService)));

    expect(loginButton, findsOneWidget);

    await tester.tap(loginButton);

    expect(dispathAction.type, LoginPlaceholderAction.onShowLoginForm);
  });
}
