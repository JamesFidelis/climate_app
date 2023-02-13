import 'dart:io';

import 'package:climate_app/main.dart';

void main() {
  Urs();
}

void performTasks() async {
  task1();
  String data = await task2();
  print(data);
  // task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeDelay = Duration(seconds: 3);
  String result = '';
  await Future.delayed(threeDelay, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}

void marginTest() {
  String myMargin = 'abc';
  double myMarginAsDouble;

  try {
    myMarginAsDouble = double.parse(myMargin);
  } catch (e) {
    print(e);
    myMarginAsDouble = 30;
    print(myMarginAsDouble);
  }
}

void myUri() {
  // var httpsUri = Uri(
  //     scheme: 'https',
  //     host: 'api.openweathermap.org',
  //     path: '/data/2.5/weather',
  //     queryParameters: {
  //       'lat': 'latest',
  //       'lon': 'longest',
  //       'appid': 'apiKeys',
  //       'units': 'metric'
  //     });
  // print(httpsUri);

  // https:?lat=$lat&lon=$long&appid=$apiKey

  // Uri httpsUris = Uri.https('api.openweathermap.org', 'data/2.5/weather',
  //     {'lat': 'latest', 'lon': 'longest', 'appid': 'apiKeys'});
  //
  // print(httpsUris);

  // final httpsUri = Uri.https('example.com', 'api/fetch', {'limit': '10'});
  // print(httpsUri);

  var httpsUri = Uri(
      scheme: 'https',
      host: 'example.com',
      path: '/page/',
      queryParameters: {'search': 'blue', 'limit': '10'});
  print(httpsUri);
}

void Urs() {
  var httpsUri = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      path: '/data/2.5/weather',
      queryParameters: {
        'lat': 'latest',
        'lon': 'longest',
        'appid': 'apiKeys',
        'units': 'metric'
      });
  print(httpsUri);
}
