import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prof_card/views/pages/Portfolio_Page.dart';
import 'package:prof_card/views/pages/Positions_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile Card',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) =>
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 5),
                      child: Row(
                        spacing: 5,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: constraints.maxWidth * 0.3 - (21 / 2),
                              height: 180,
                              child: Image.asset(
                                'assets/images/pfp.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: constraints.maxWidth * .7 - (21 / 2),
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black87,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    15.0,
                                    17.0,
                                    8.0,
                                    10.0,
                                  ),
                                  child: Text(
                                    'Gerald Rocha',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    15.0,
                                    0.0,
                                    12.0,
                                    10.0,
                                  ),
                                  child: Text(
                                    'Product Designer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    15.0,
                                    0.0,
                                    12.0,
                                    9.0,
                                  ),
                                  child: Text(
                                    'The mobile apps I develop are easy to use, they have accessible navigation, a well-thought-out interface and a high-quality design.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              ),

              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: Stack(
                        children: [
                          //container which contains smaller containers of some of the positions
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black87,
                            ),
                            height: 250,
                            width: double.infinity,
                            padding: const EdgeInsets.fromLTRB(
                              15,
                              17.0,
                              8.0,
                              10.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Work Experience',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return PositionsPage();
                                        },
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.add, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 10,
                            right: 10,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  //container of position 1
                                  Container(
                                    width: 300,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            child: Container(
                                              child: Image.asset(
                                                'assets/images/xlogo.png',
                                              ),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              8.0,
                                              10,
                                              5,
                                              5,
                                            ),
                                            child: Text(
                                              'Lead Product designer',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              8.0,
                                              0,
                                              5,
                                              5,
                                            ),
                                            child: Text(
                                              'X-2023-2024',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //container of position 2
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 300,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            child: Container(
                                              child: Image.asset(
                                                'assets/images/SLf.jpg',
                                              ),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              8.0,
                                              10,
                                              5,
                                              5,
                                            ),
                                            child: Text(
                                              'Senior Product designer',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              8.0,
                                              0,
                                              5,
                                              5,
                                            ),
                                            child: Text(
                                              'Spotify-2020-2023',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //container of position 3
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 300,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            child: Container(
                                              child: Image.asset(
                                                'assets/images/YM.png',
                                              ),
                                              width: 50,
                                              height: 50,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              8.0,
                                              10,
                                              5,
                                              5,
                                            ),
                                            child: Text(
                                              'Senior Product designer',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              8.0,
                                              0,
                                              5,
                                              5,
                                            ),
                                            child: Text(
                                              'Youtube Music-2019-2020',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Start of the final container which contains the portfolio
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 5, 8, 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black87,
                        ),
                        height: 300,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 17, 18, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Portfolio',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return PortfolioPage();
                                          },
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    width: constraints.maxWidth * 0.8,
                                    height: 220,
                                    child: Image.asset(
                                      'assets/images/port.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
