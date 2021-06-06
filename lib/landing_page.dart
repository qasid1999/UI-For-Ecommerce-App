import 'package:assignment3_qasid_course_jawan_pakistan/user_detail.dart';
import 'package:flutter/material.dart';

import 'history.dart';
import 'list_of_products.dart';

class LandingPage extends StatelessWidget {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
        title: Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          ListOfProducts(),
          HistoryPage(),
          UserDetail(),
        ],
      ),
    );
  }
}
