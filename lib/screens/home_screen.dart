import 'package:flutter/material.dart';
import 'package:instaclone/pages/home_page.dart';
import 'package:instaclone/pages/media_page.dart';
import 'package:instaclone/pages/reel_page.dart';
import 'package:instaclone/pages/user_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pages/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: const [
          HomePage(),
          SearchPage(),
          MediaPage(),
          ReelPage(),
          UserPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                size: 30,
                color: currentPage == 0 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                size: 30,
                color: currentPage == 1 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MediaPage();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: Icon(
                Icons.ondemand_video,
                size: 30,
                color: currentPage == 3 ? Colors.black87 : Colors.black54,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: const Icon(FontAwesomeIcons.user),
              color: currentPage == 4 ? Colors.black87 : Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
