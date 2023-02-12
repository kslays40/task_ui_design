import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainpage(),
    );
  }
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Learn',
      style: optionStyle,
    ),
    Text(
      'Index 2: Hub',
      style: optionStyle,
    ),
    Text(
      'Index 3: Chat',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            color: const Color(0xFFf6f9fe),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.alignLeft),
                    Spacer(),
                    Icon(FontAwesomeIcons.message),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(FontAwesomeIcons.bell)
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello, Priya!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    Text("What do you wanna learn today?"),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.book,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              Text(
                                'Programs',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.solidCircleQuestion,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              Text(
                                'Get Help',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.bookOpen,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              Text(
                                'Learn',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.moneyBillTrendUp,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              Text(
                                'DD Tracker',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Container(
            //white container
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Programs for you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Spacer(),
                      Text('View All'),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(CupertinoIcons.arrow_right),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 380, // card height
                    child: PageView.builder(
                      itemCount: 3,
                      controller: PageController(viewportFraction: 1),
                      onPageChanged: (int index) =>
                          setState(() => _index = index),
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.9,
                          child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                      image: DecorationImage(
                                        image: AssetImage('images/baby.png'),
                                        fit: BoxFit.fill,
                                      ),
                                        color: Colors.green,
                                    ),
                                    height: 250.0,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              'LIFESTYLE',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'A complete guide for your ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'new born baby',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '10 Lessons',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Events and Experiences',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Spacer(),
                      Text('View All'),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(CupertinoIcons.arrow_right),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 300, // card height
                    child: PageView.builder(
                      itemCount: 3,
                      controller: PageController(viewportFraction: 1),
                      onPageChanged: (int index) =>
                          setState(() => _index = index),
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.9,
                          child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(15.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage('images/yoga.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: 180.0,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              'BABYCARE',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'Understanding of human',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'behaviour',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              '13 Feb, Sunday',
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.blue),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Book',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Lessons for you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Spacer(),
                      Text('View All'),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(CupertinoIcons.arrow_right),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 300, // card height
                    child: PageView.builder(
                      itemCount: 3,
                      controller: PageController(viewportFraction: 1),
                      onPageChanged: (int index) =>
                          setState(() => _index = index),
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.9,
                          child: Card(
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(15.0),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage('images/yoga.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: 180.0,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              'BABYCARE',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'Understanding of human',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'behaviour',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '3 min',
                                            ),
                                            Spacer(),
                                            Icon(FontAwesomeIcons.lock),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      //bottom nav
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookOpen,),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.boxesStacked,),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.message,),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.addressCard,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedLabelStyle: const TextStyle(color: Colors.blue),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
