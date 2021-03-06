import 'package:flutter/material.dart';
import 'package:news/view/home/livetv.dart';
import 'package:news/view/home/bookmark.dart';
import 'package:news/view/home/radio.dart';
import 'package:news/view/home/video.dart';
import 'article.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  static List<Widget> _screen = <Widget>[
    Article(),
    Video(),
    Bookmark(),
    Radios(),
    LiveTV()
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            title:
                Text("Article", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_outlined),
            title: Text("Video", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outlined),
            title:
                Text("Bookmark", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_outlined),
            title: Text("Radio", style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_outlined),
            title:
                Text("Live TV", style: TextStyle(fontWeight: FontWeight.w600)),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF2E2A43),
        unselectedItemColor: Color(0xFFC9CCD1),
        onTap: _onItemTapped,
      ),
    );
  }
}
