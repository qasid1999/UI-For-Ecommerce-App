import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              color: Colors.pink[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpg'),
                    radius: 70,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Muhammad Qasid',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'qasid809@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          return Navigator.pop(context);
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              color: Colors.purple[300],
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.pink[50],
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ACCOUNT INFORMATION",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  listTile('Full Name', 'Muhammad Qasid ur Rehman'),
                  listTile('Email', 'qasid809@gmail.com'),
                  listTile('Phone', '031611223344'),
                  listTile('Address', 'Kohat , Lachi , Mohallah Zargaran'),
                  listTile('Gender', 'Male'),
                  listTile('Date Of Birth', '19 July 1999'),
                  listTile('Province', 'Pakistan'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile listTile(String title, String subTitle) {
    return ListTile(
      title: Text(
        "$title",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        "$subTitle",
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
