import 'dart:convert';

import 'package:http/http.dart'as http;

class MockUser{
Future<MyUser> fetchUserInfo(http.Client client) async {
  final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/userInfo/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return MyUser.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load user info');
  }
}


}

class MyUser{
  final int userId;
  final int age;
  final String name;

  const MyUser({required this.userId, required this.age, required this.name});

  factory MyUser.fromJson(Map<String, dynamic> json) {
    return MyUser(
      userId: json['userId'],
      age: json['age'],
      name: json['name'],
    );
  }
}
