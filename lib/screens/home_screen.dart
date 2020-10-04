import 'package:astrounify/home_page.dart';
import 'package:astrounify/profile.dart';
import 'package:flutter/material.dart';
import 'package:astrounify/widgets/popular_topics.dart';
import 'package:astrounify/widgets/posts.dart';
import 'package:astrounify/widgets/top_bar.dart';
import 'package:themify_flutter/themify_flutter.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Astro Forum",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Find Topics you like to read",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 14.0,
                        ),
                      ),
                      Icon(
                        Themify.search,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TopBar(),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Popular Topics",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  PopularTopics(),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                    child: Text(
                      "Trending Posts",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Posts()
                ],
              ))
        ],
      )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: Colors.blueGrey[900],
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.forum,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileApp(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
