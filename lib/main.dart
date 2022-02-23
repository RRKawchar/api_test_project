import 'package:api_test_project/Api_test/api_class_one.dart';
import 'package:api_test_project/Api_test/api_class_three.dart';
import 'package:api_test_project/Api_test/photos_api.dart';
import 'package:api_test_project/Api_test/post_api_two.dart';
import 'package:api_test_project/Api_test/post_dynamic_api.dart';
import 'package:api_test_project/Api_test/signUp_Screeen.dart';
import 'package:api_test_project/Api_test/upload_image_api.dart';
import 'package:api_test_project/Api_test/user_api_two.dart';
import 'package:flutter/material.dart';

import 'Api_test/user_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ApiClassThree(),
    );
  }
}


