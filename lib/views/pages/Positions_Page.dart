//page containing all positions , it gets pushed by a button in the work experience container in the main

import 'package:flutter/material.dart';

class PositionsPage extends StatefulWidget {
  const PositionsPage({super.key});

  @override
  State<PositionsPage> createState() => _PositionsPageState();
}

class _PositionsPageState extends State<PositionsPage> {
  //List of map which takes string elements. These elements are  found in a small container that will show in the positions page
  List<Map<String, dynamic>> innerList = [
    {
      "position": "Lead Product Design",
      "image": "assets/images/xlogo.png",
      "date": "2023-current",
    },
    {
      "position": "Senior Product Design",
      "image": "assets/images/Slf.jpg",
      "date": "2020-2023",
    },
    {
      "position": "Senior Product Design",
      "image": "assets/images/YM.png",
      "date": "2019-2020",
    },
    {
      "position": "Lead Product Design",
      "image": "assets/images/YM.png",
      "date": "2018-2019",
    },
    {
      "position": "Mobile App Developer",
      "image": "assets/images/anghami.png",
      "date": "2016-2018",
    },
    {
      "position": "Junior App developer",
      "image": "assets/images/anghami.png",
      "date": "2015-2016",
    },
    {
      "position": "App Development Intern",
      "image": "assets/images/anghami.png",
      "date": "2014",
    },
    {
      "position": "App Development Intern",
      "image": "assets/images/itunes.jpg",
      "date": "2013",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positions', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: BackButton(onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            spacing: 20,
            runSpacing: 10,
            children: innerList
                .map(
                  (elt) => Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child:
                                //this is how we summon the image element from the list. We use the key"image"
                                Image.asset(
                                  elt['image'],
                                  width: 50,
                                  height: 50,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                            //this is how we summon the position element from the list. We use the key"position"
                            child: Text(
                              elt['position'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                            //this is how we summon the date element from the list. We use the key"date"
                            child: Text(
                              elt['date'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
