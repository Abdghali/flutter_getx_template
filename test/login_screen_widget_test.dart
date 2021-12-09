import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/controllers/login_controller.dart';
import 'package:flutter_getx_template/app/views/screens/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_getx_template/main.dart' as app;
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  testWidgets('move to login page', (WidgetTester tester) async {
    await tester.pumpWidget(app.MyApp());
    await tester.pumpAndSettle();

    const testKey = Key('log');
    final loginButton = find.byKey(testKey);

    await tester.tap(loginButton);
    await tester.pump(Duration(seconds: 1));
    expect(loginButton, findsOneWidget);
  });

  testWidgets('enter username and password', (WidgetTester tester) async {
    // await tester.pumpWidget(app.MyApp());
    // await tester.pumpAndSettle();
    Get.put(LoginController());
    await tester.pumpWidget(MaterialApp(
      home: LoginScreen(),
    ));
    await tester.pumpAndSettle();

    // const unKey = Key('username');
    // const psKey = Key('password');
    // final unTextFeails = find.byKey(unKey);
    // final psTextFeails = find.byKey(psKey);
    // expect(unTextFeails, findsOneWidget);
    // expect(psTextFeails, findsOneWidget);
    final unKey = Key('username');
    final psKey = Key('password');
    expect(find.byKey(unKey), findsOneWidget);
    expect(find.byKey(psKey), findsOneWidget);

    await tester.enterText(find.byKey(unKey), "abd@gmail.com");
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(psKey), "123456");
    await tester.pumpAndSettle();
  });

  group("App test", () {
// inshalize inteagration
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("full app test", (tester) async {
//1 - execute app.main()
      app.main();

//2- waite untel the app settled
      tester.pumpAndSettle();

// 3- find text form feaild

      // final emailTextFeaild = find.byType(TextFormField).first;
      // final passwordTextFeaild = find.byType(TextFormField).last;
      final loginButton = find.byType(ElevatedButton).first;
      const testKey = Key('log');
      final unKey = Key('username');
      final psKey = Key('password');
      final goToLoginPage = find.byKey(testKey);


      await tester.tap(goToLoginPage);

      await tester.enterText(find.byKey(unKey), "abd@gmail.com");
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(psKey), "123456");
      tester.pumpAndSettle();

      await tester.tap(loginButton);


    });
  });
}
