import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/controllers/login_controller.dart';
import 'package:flutter_getx_template/app/views/screens/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_getx_template/main.dart' as app;
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group("App test", () {
// inshalize inteagration
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets("full app test", (tester) async {
//1 - execute app.main()
      app.main();
    

//2- waite untel the app settled
      await tester.pumpAndSettle();

// 3- find text form feaild

      final testKey = Key('log');
      
      final goToLoginPage = find.byKey(testKey);
      await tester.tap(goToLoginPage);
      await tester.pumpAndSettle();

      final unKey = Key('username');
       final psKey = Key('password');
       await tester.enterText(find.byKey(unKey), "abd@gmail.com");
       await tester.enterText(find.byKey(psKey), "123456");
      final loginButton = find.byType(ElevatedButton).first;
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
    });
  });
}
