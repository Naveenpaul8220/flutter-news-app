import 'package:flutter/material.dart';

import 'route_generator.dart';

class Savedarticle extends StatefulWidget {
  const Savedarticle({super.key});

  @override
  State<Savedarticle> createState() => _SavedarticleState();
}

class _SavedarticleState extends State<Savedarticle> {
  final List<Map<String, String>> articles = [
    {
      'image': 'assets/images/parliment.jpg',
      'title': 'Elections predictions',
      'time':'4 min read'
    },
    {
      'image': 'assets/images/netflix.jpg',
      'title': 'New blockbusters you must see',
       'time':'2 min read'
    },
    {
      'image': 'assets/images/president.jpg',
      'title': 'Who will be new PM?',
       'time':'4 min read'
    },
    {
      'image': 'assets/images/building.jpg',
      'title': 'Weekly digest: The most important',
       'time':'7 min read'
    },
  ];

  final List<Map<String, Object>> _categories = [
    {'label': 'Politics', 'icon': Icons.mic},
    {'label': 'Sports', 'icon': Icons.sports_baseball},
    {'label': 'World news', 'icon': Icons.newspaper},
    {'label': 'Culture', 'icon': Icons.music_note},
    {'label': 'Business', 'icon': Icons.show_chart},
    {'label': 'Technology', 'icon': Icons.computer},
  ];

  int _selectedIndex = 2;
  int _selectedCategoryIndex = -1;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.of(context).pushNamed(RouteGenerator.sportspage);
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading :false,
        title: const Text('NewsPulse'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Saved Articles',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ...articles.map((article) => _buildSavedArticle(context, article)).toList(),
            const SizedBox(height: 16.0),
            const Text(
              'My favorite categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            _buildFavoriteCategories(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildSavedArticle(BuildContext context, Map<String, String> article) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(article['image']!),
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article['title']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                 Text(
                  article['time']!,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.bookmark),
            color: Colors.orange,
            onPressed: () {
          
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteCategories(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.5,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _categories.length,
      itemBuilder: (context, index) {
        final category = _categories[index];
        bool isSelected = index == _selectedCategoryIndex;
        return Card(
          elevation: 4.0,
          color: isSelected ? Colors.grey[200] : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedCategoryIndex = index;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  category['icon'] as IconData,
                  size: 40.0,
                  color: isSelected ? Colors.orange : Colors.black,
                ),
                const SizedBox(height: 10.0),
                Text(
                  category['label'] as String,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.black : Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
