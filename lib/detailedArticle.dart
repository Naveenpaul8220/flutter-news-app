import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class detailedArticle extends StatefulWidget {
  const detailedArticle({super.key});

  @override
  State<detailedArticle> createState() => _DetailedArticleState();
}

class _DetailedArticleState extends State<detailedArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsPulse'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Famous snowboarder wins Grand Prix',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Row(
                children: const [
                  Text(
                    'November 13, 2022',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 180),
                  Text(
                    '2 min read',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/sports.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'CALIFORNIA - The young and famous snowboarder wins his second grand prix this year. His tricks are still new to the world and he\'s quickly winning every competition he enters.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Everyone knows young, 18 year old snowboarder Jenna Shae. She\'s been labeled a rebel for years, but this girl just can\'t stop winning. She started snowboarding at age 7, and now wins grand prix races with ease. At age 18 she is still going strong, and will hopefully keep that hot streak alive well into adulthood.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
               const SizedBox(height: 20.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/lady.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/lady1.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                      width: 16), // Adjust the width to change the gap
                  const Expanded(
                    child: Text(
                      '“ This is a great story. My daughter started snowboarding when she was 7 years old and now at 16, I am so excited to hear about her latest win.”',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Column(
                children: [
                  const Text(
                    "She is a trained athlete who competed in various countries and became a number one. Her coach is super proud of her results and thinks that she can win Olympics for sure. The sport of snowboarding has been around since the 1960s, but it wasn't until the 1998 Winter Olympics that it made its Olympic debut at the Nagano Games. Men and women both take their turns on giant slalom and halfpipe courses, earning points based on style and course completion. In 2002, snowboardcross made its debut as a full-on medal sport, with men and women racing against each other in one course.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
               const SizedBox(height: 20.0),
              const Text(
                "More from the author",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
               const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image.asset(
                  //           'assets/images/mountainman.jpg',
                  //           width: 100,
                  //           height: 100,
                  //           fit:BoxFit.fitWidth ,
                  //         ),
                  //   Image.asset(
                  //   'assets/images/bag.jpg',
                  //   width: 100,
                  //   height: 100,
                  //    fit:BoxFit.fitHeight ,
                  // ),
                  //   Image.asset(
                  //   'assets/images/twomens.jpg',
                  //   width: 100,
                  //   height: 100,
                  //    fit:BoxFit.fitWidth ,

                  // ),

                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                        image: AssetImage('assets/images/mountainman.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                        image: AssetImage('assets/images/bag.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                        image: AssetImage('assets/images/twomens.jpg'),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
