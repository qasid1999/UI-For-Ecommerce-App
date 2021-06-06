import 'package:flutter/material.dart';

final List<String> namesofProducts = [
  'Infinix HOT 9',
  'Oppo F7',
  'Samsung S6',
  'Iphone 11+',
  'DELL Core i5',
  'HP Core i7',
  'Dell Core i4',
  'HP Core i5',
];

class HistoryPage extends StatelessWidget {
  final List<Widget> listofproducts = List.generate(
    8,
    (index) => ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/img$index.jpg'),
        radius: 30,
      ),
      title: Text(namesofProducts[index]),
      subtitle: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text('  5.0 (23 Reviews)'),
        ],
      ),
      trailing: Text(
        '\$10',
        style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[350]),
            ),
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'History',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 16, bottom: 10),
                  color: Colors.white,
                  child: Column(children: listofproducts),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
