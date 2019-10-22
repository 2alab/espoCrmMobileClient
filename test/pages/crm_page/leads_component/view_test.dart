import 'package:espo_contacts/pages/crm_page/leads_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:espo_contacts/pages/crm_page/leads_component/view.dart';
import 'package:mockito/mockito.dart';

class MockState extends Mock implements LeadsState {}

class MockViewService extends Mock implements ViewService {}

void main() {
  LeadsState state;
  ViewService viewService;

  setUp(() {
    state = MockState();
    viewService = MockViewService();
  });

  testWidgets('Test authorized button', (WidgetTester tester) async {
    final state = MockState();
    when(state.isNotAuthorised()).thenReturn(false);

    await tester.pumpWidget(_leadsView(state, viewService));

    expect(find.byKey(Key('stub')), findsOneWidget);
  });

  testWidgets('Test login button', (WidgetTester tester) async {
    when(state.isNotAuthorised()).thenReturn(true);

    when(viewService.buildComponent(any))
        .thenReturn(FlutterLogo(key: Key("testButton")));

    await tester.pumpWidget(_leadsView(state, viewService));

    expect(find.byKey(Key('testButton')), findsOneWidget);
    expect(find.byKey(Key('stub')), findsNothing);
  });
}

Widget _leadsView(MockState state, ViewService viewService) {
  return Directionality(
    textDirection: TextDirection.ltr,
    child: buildView(state, null, viewService),
  );
}
