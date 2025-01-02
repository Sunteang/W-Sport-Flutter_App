import 'package:flutter/material.dart';
import 'package:homework01/screens/profile/ProfilePage.dart';
import 'package:homework01/screens/register/Register.dart';
import 'package:homework01/screens/setting/SettingPage.dart';

class SportsHomeScreen extends StatelessWidget {
  final List<Map<String, String>> sportsCategories = [
    {"name": "Football", "icon": "⚽"},
    {"name": "Basketball", "icon": "🏀"},
    {"name": "Volleyball", "icon": "🏐"},
    {"name": "Rugby", "icon": "🏉"},
    {"name": "Baseball", "icon": "⚾"},
    {"name": "Golf", "icon": "⛳"},
    {"name": "Table Tennis", "icon": "🏓"},
    {"name": "Tennis", "icon": "🎾"},
    {"name": "Cricket", "icon": "🏏"},
    {"name": "Swimming", "icon": "🏊‍♂️"},
    {"name": "Athletics", "icon": "🏃‍♂️"},
  ];

  final List<Map<String, String>> featuredSports = [
    {
      "title": "Champions League Final",
      "subtitle": "Manchester United vs Chelsea",
      "image":
          "https://img.allfootballapp.com/www/M00/3A/94/720x-/-/-/rB8ApFzj1fGAaSaqAAFEPntHwGU171.jpg.webp"
    },
    {
      "title": "NBA Playoffs",
      "subtitle": "Lakers vs Warriors",
      "image":
          "https://cdn.vox-cdn.com/thumbor/AI9ajRFw_ZP9VLkJkdcjmRiFNu4=/0x0:3721x2481/1200x800/filters:focal(1537x129:2131x723)/cdn.vox-cdn.com/uploads/chorus_image/image/73808689/1975898068.0.jpg"
    },
    {
      "title": "Men's Volleyball Nations League Final",
      "subtitle": "USA vs Brazil",
      "image": "https://i.ytimg.com/vi/Bgzia3N2mwM/maxresdefault.jpg"
    },
    {
      "title": "FiFa World Cup",
      "subtitle": "Argentina vs France",
      "image":
          "https://media.newyorker.com/photos/639f8697f0815d43ec7dbafc/master/w_2560%2Cc_limit/World%2520Cup%2520Final.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "W Sports",
          style: TextStyle(
              color: Colors.orange, fontSize: 34, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white, size: 30),
            onPressed: () {
              // Add search functionality or navigation here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Search feature coming soon!"),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outlined,
                color: Colors.white, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Register(),
                ),
              );
            },
          ),
        ],
        // Custom Drawer Icon
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white, // Custom color for the hamburger icon
                size: 30, // Custom size for the hamburger icon
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                'Serey Sunteang',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'sereysunteang@gmail.com',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/65/78/64/657864774184d29c4c3606640b3ec3fa.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blueAccent,
                size: 30,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.blueAccent,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.blueAccent,
                size: 30,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.blueAccent,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Explore Sports",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sportsCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueAccent, width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          sportsCategories[index]["icon"]!,
                          style: const TextStyle(fontSize: 30),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          sportsCategories[index]["name"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Featured Events",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: featuredSports.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          child: Image.network(
                            featuredSports[index]["image"]!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                featuredSports[index]["title"]!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                featuredSports[index]["subtitle"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                        const SizedBox(width: 8),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Set the background color
        currentIndex: 0,
        selectedItemColor: Colors.blue, // Color for the selected item
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back),
            label: 'HighLights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}

// Dummy Page for navigation
class _CustomPage extends StatelessWidget {
  final String pageName;

  const _CustomPage({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageName)),
      body: Center(child: Text('Welcome to the $pageName')),
    );
  }
}
