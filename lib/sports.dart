import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'route_generator.dart';

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.of(context).pushNamed(RouteGenerator.savedarticle);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Saved Page'),
    Text('Profile Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('NewsPulse'),
          centerTitle: true,
          bottom: const TabBar(
            labelColor: Colors.orange,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'News'),
              Tab(text: 'Sports'),
              Tab(text: 'World News'),
              Tab(text: 'Business'),
              Tab(text: 'Political'),
            ],
            labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
          ),
        ),
        body: TabBarView(
          children: [
            const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "News Page Content",
                      style: TextStyle(
                        fontSize: 15,
                       
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
          
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/sports.jpg',
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Oct 4, 2022",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              "3 min read",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.bookmark_outline,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          "Famous snowboarder wins GrandPrix",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Domine',
                          ),
                        ),
                        const Text(
                          "The new champion explained her success as the result of a strict training regimen instituted by her coach. The youngster is also her manager and has reportedly arranged sponsorship deals which will dwarf her one million dollar prize fund.",
                          //textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.detailedarticle);
                          },
                          child: const Row(
                            children: [
                              Text(
                                "Read more",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.orange,
                                size: 16.0,
                              ),
                            ],
                          ),
                        ),
                        const Column(
                          children: [],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                        const SizedBox(height: 20.0),
                        const Text(
                          "More Articles",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Domine',
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                'assets/images/cycleimage.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "French Cycling Tour is postponed",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "5 min read",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(RouteGenerator.cyclearticle);
                              },
                              child: const Icon(
                                Icons.bookmark_outline,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                          width: 30.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  15.0), 
                              child: Image.asset(
                                'assets/images/football.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit
                                    .cover, 
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Footballer leaves British FC",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "2 min read",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.bookmark_outline,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                          width: 30.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  15.0),
                              child: Image.asset(
                                'assets/images/tennis.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit
                                    .cover, 
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Young tennis player wins WTC",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "2 min read",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.bookmark_outline,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                        const SizedBox(height: 20.0),
                        const Text(
                          "Long read:\"You can be champion in anything\", says world-class coach.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                          width: 30.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                'assets/images/man.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Long awaited extensive interview with number one football coach, who moved from South America to lead British team to the victory.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    "20 min read",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sign up for newsletter",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Subscribe to our newsletter and receive the freshest news from all around the world.",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 8.0, width: 9.0),
                            SizedBox(height: 16.0),
                            SizedBox(width: 8.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            // borderSide: BorderSide(width: 8),
                            // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                        hintText: 'Enter mail address',
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.conformsubscription);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white),
                      child: const Text('Subscribe'),
                    ),
                  ),
                ],
              ),
            ),
            const Center(child: Text('World News')),
            const Center(child: Text('Business')),
            const Center(child: Text('Political')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              //backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Saved',
              // backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: 'Profile',
              //backgroundColor: Colors.black
            ),
          ],
        ),
      ),
    );
  }
}
