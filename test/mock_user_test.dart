
import 'package:flutter_getx_template/core/contracts/mock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'mock_user_test.mocks.dart';

@GenerateMocks([http.Client])

void main() {
   group('fetch User Info', () {
    test('returns an user info if the http call completes successfully', () async {
      final client = MockClient();
      MockUser  mockUser = MockUser();
      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client.get(Uri.parse('https://jsonplaceholder.typicode.com/userInfo/1')))
          .thenAnswer((_) async =>
              http.Response('{"userId": 1, "age": 2, "name": "mock"}', 200));

         MyUser mUser = await mockUser.fetchUserInfo(client);
         print(mUser.name);

      expect(mUser, isA<MyUser>());
    });




    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();
      MockUser  mockUser = MockUser();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
              .get(Uri.parse('https://jsonplaceholder.typicode.com/userInfo/1')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(mockUser.fetchUserInfo(client), throwsException);
    });
  });
}