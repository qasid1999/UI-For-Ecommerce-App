import 'package:assignment3_qasid_course_jawan_pakistan/history.dart';
import 'package:assignment3_qasid_course_jawan_pakistan/list_of_products.dart';
import 'package:assignment3_qasid_course_jawan_pakistan/log_in_page.dart';
import 'package:assignment3_qasid_course_jawan_pakistan/user_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
    );
  }
}
