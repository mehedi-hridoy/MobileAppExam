import 'package:flutter/material.dart';
import 'file.dart';

class OddProblem extends StatefulWidget {
  const OddProblem({super.key});

  @override
  State<OddProblem> createState() => _OddProblemState();
}

class _OddProblemState extends State<OddProblem> {
  bool isNightMode = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 106, 169, 10),
          leading: Builder(
            builder:
                (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
          ),
          title: const Icon(Icons.whatshot),
          actions: [
            IconButton(
              icon: const Icon(Icons.do_not_disturb_alt), // random icon 
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.tab_unselected), // random icon 
              onPressed: () {},
            ),
            Builder(
              builder:
                  (context) => IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      Scaffold.of(
                        context,
                      ).openEndDrawer(); 
                    },
                  ),
            ),
          ],


          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text('Load', style: TextStyle(color: Colors.white))),

              Tab(child: Text('App', style: TextStyle(color: Colors.white))),

              Tab(child: Text('Photo', style: TextStyle(color: Colors.white))),

              Tab(child: Text('Music', style: TextStyle(color: Colors.white))),
              Tab(child: Text('Video', style: TextStyle(color: Colors.white))),
              Tab(child: Text('File', style: TextStyle(color: Colors.white))),
            ],
          ),
        ),

        // My drawer starts from here

        drawer: Drawer(
          backgroundColor: Colors.black87,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.black87),
                accountName: Center(
                  child: const Text(
                    'Xender',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                accountEmail: const Text(
                  '',
                  style: TextStyle(color: Colors.white70),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Colors.white),
                title: const Text(
                  'Language',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.high_quality,
                  color: Colors.white,
                ), // icon jani na
                title: const Text(
                  'High-speed Mode Supported',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.nightlife, color: Colors.white),
                title: const Text(
                  'Night Mode',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              ListTile(
                leading: const Icon(
                  Icons.settings_applications,
                  color: Colors.white,
                ),
                title: const Text(
                  'Mi Phone Settings',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.feedback, color: Colors.white),
                title: const Text(
                  'Help & Feedback',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.rate_review, color: Colors.white),
                title: const Text(
                  'Ratings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.self_improvement,
                  color: Colors.white,
                ), //dont' know aboutthis  icon
                title: const Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            Center(),
            Center(),
            Center(),
            Center(),
            Center(),
            FilePage(),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play),
              label: 'PLAYLIST',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'TOMP3',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'PLAY'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'SOCIAL'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ME'),
          ],
        ),
      ),
    );
  }
}
