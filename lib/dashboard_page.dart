import 'package:flutter/material.dart';
import 'route_generator.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/flutternewslogo.png',
              height: 200.0,
              width: 300.0,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'NewsPulse',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
            width: 10.0,
          ),
          const Text(
            'Choose one of our subscriptions and stay informed wherever you are.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
             padding: const EdgeInsets.all(25.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteGenerator.subscribePage);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white),
              child: const Text(
                'Subscribe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
