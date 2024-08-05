import 'package:flutter/material.dart';

import 'route_generator.dart';

class Subscribed extends StatefulWidget {
  const Subscribed({super.key});

  @override
  State<Subscribed> createState() => _SubscribedState();
}

class _SubscribedState extends State<Subscribed> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading :false,
        title: const Text('NewsPulse'),
        centerTitle: true,
      ), 
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'You are now Subscribed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: const Image(
                      image: AssetImage('assets/images/tick.png'),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteGenerator.dashboardPage);
                },
                 style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white),
                child: const Text('Back to Home'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
