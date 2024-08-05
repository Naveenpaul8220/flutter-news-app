import 'package:flutter/material.dart';

import 'route_generator.dart';

class Interestpage extends StatefulWidget {
  const Interestpage({Key? key}) : super(key: key);

  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<Interestpage> {
  final List<String> interests = [
    'News', 'Culture', 'Technology', 'World news', 'Elections', 'Film', 
    'Foreign affairs', 'Commentary', 'Art', 'Politics', 'Sports', 
    'Science', 'Business', 'Climate news'
  ];

  final List<String> selectedInterests = [];

  void toggleSelection(String interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
      } else {
        selectedInterests.add(interest);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsPulse'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
               Navigator.of(context).pushNamed(RouteGenerator.sportspage);
            },
            child: const Text('Skip', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select your interests:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: interests.map((interest) {
                final isSelected = selectedInterests.contains(interest);
                return ChoiceChip(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  // padding: const EdgeInsets.all(10.0),
                  checkmarkColor: Colors.white,
                  label: Text(
                    interest,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  selected: isSelected,
                  onSelected: (selected) {
                    toggleSelection(interest);
                  },
                  selectedColor: Colors.black,
                  backgroundColor: Colors.white,
                );
              }).toList(),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
               padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                 Navigator.of(context).pushNamed(RouteGenerator.sportspage);
                },
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white),
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
