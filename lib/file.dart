import 'package:flutter/material.dart';

class FilePage extends StatelessWidget {
  const FilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


          // This is my search bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.white54),
                  hintText: 'Search local files',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),


            Row(
              children: [
                const Icon(Icons.sd_storage, color: Colors.white),
                const SizedBox(width: 10),
                const Text(
                  'Phone Storage',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
  
                const Text(
                  'Total: 244GB  ',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const Text(
                  'Available: 135GB',
                  style: TextStyle(color: Colors.greenAccent, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: 135 / 244,
              color: Colors.greenAccent,
              backgroundColor: Colors.white24,
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: const [
                  FileTile(
                    icon: Icons.description,
                    title: 'Documents(45)',
                    subtitle: 'Includes Word, PPT, Excel, WPS, etc.',
                  ),
                  FileTile(
                    icon: Icons.menu_book,
                    title: 'Ebooks(88)',
                    subtitle: 'Includes .umd, .ebk, .txt, .chm, etc.',
                  ),
                  FileTile(
                    icon: Icons.android,
                    title: 'Apks(0)',
                    subtitle: 'Includes .apk files',
                  ),
                  FileTile(
                    icon: Icons.archive,
                    title: 'Archives(4)',
                    subtitle: 'Includes .7z, .rar, .zip, .iso, etc.',
                  ),
                  FileTile(
                    icon: Icons.insert_drive_file,
                    title: 'Big files(41)',
                    subtitle: 'Includes files > 50 MB',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: Icon(icon, color: Colors.blueAccent, size: 30),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.white54)),
      onTap: () {},
    );
  }
}
