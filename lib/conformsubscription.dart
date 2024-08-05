import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'route_generator.dart';

class Conformsubscription extends StatefulWidget {
  const Conformsubscription({super.key});

  @override
  State<Conformsubscription> createState() => _ConformsubscriptionState();
}

class _ConformsubscriptionState extends State<Conformsubscription> {
  bool dailyNews = true;
  bool weeklyDigest = false;
  bool sportsCommentary = false;
  bool businessPredictions = true;
  bool cultureTips = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading :false,
        title: const Text('NewsPulse'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose your newsletter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            buildCheckboxCard("Daily news", dailyNews, (value) {
              setState(() {
                dailyNews = value;
              });
            }),
            const SizedBox(height: 30),
            buildCheckboxCard("Weekly digest", weeklyDigest, (value) {
              setState(() {
                weeklyDigest = value;
              });
            }),
            const SizedBox(height: 30),
            buildCheckboxCard("Sports commentary", sportsCommentary, (value) {
              setState(() {
                sportsCommentary = value;
              });
            }),
            const SizedBox(height: 30),
            buildCheckboxCard("Business predictions", businessPredictions, (value) {
              setState(() {
                businessPredictions = value;
              });
            }),
            const SizedBox(height: 30),
            buildCheckboxCard("Culture tips", cultureTips, (value) {
              setState(() {
                cultureTips = value;
              });
            }),
            const Spacer(),
            Container(
              width: double.infinity,
               padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                   Navigator.of(context).pushNamed(RouteGenerator.subscribed);
                },
               style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white),
                child: const Text('Confirm Subscription'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCheckboxCard(String title, bool value, Function(bool) onChanged) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
              activeColor: Colors.orange,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold), 
            ),
          ],
        ),
      ),
    );
  }
}
