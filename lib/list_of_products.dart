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
  'Lenove',
  'ACER'
];

class ListOfProducts extends StatelessWidget {
  final List<Widget> listofProducts = List.generate(
      10,
      (index) => Padding(
            padding: const EdgeInsets.all(1.0),
            child: Card(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    child: Image.asset(
                      'images/img$index.jpg',
                      fit: BoxFit.cover,
                      width: 160,
                      height: 170,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text(
                          namesofProducts[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text('5.0 (23 Review )')
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text('20 Pieces '),
                            Text(
                              ' \$90',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Quantity : 1'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listofProducts,
    );
  }
}
