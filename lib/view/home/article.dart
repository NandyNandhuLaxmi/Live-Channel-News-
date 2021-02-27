import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF2E2A43),
        title: Text(
          'NewsExtra',
        ),
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menu, color: Color(0xFFFFFFFFF)),
        ),
        actions: [
          IconButton(
            icon: Icon(EvaIcons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Builder(builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xFF2E2A43),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(110),
                      child: Image.asset(
                        "assets/images/profile.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    accountName: Text('Helixy',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500)),
                    accountEmail: null),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.category),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Feeds Source',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.source),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Weather Reports',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.wb_sunny),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Night Mode',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.color_lens),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Recieve Notifications',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.notifications),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Show Images',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.image),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Show Small Images',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.photo_size_select_small),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Enable RTL',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.public),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Select Language',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.language),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Rate Us',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.rate_review),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'About Us',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.info),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'App Terms',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.chrome_reader_mode),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Color(0xFFFFFFFF),
                  child: ListTile(
                    title: new Text(
                      'Privacy Policy',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    leading: Icon(Icons.label_important),
                    onTap: () {
                      Navigator.of(context).pop();
                      //Navigator.of(context).pushNamed('home');
                    },
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        );
      }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TabBar(
                unselectedLabelColor: Color(0xFFC9CCD1),
                labelColor: Color(0xFF2E2A43),
                tabs: [
                  Tab(child: Text('All', style: TextStyle(fontSize: 12))),
                  Tab(child: Text('News', style: TextStyle(fontSize: 12))),
                  Tab(child: Text('Fashions', style: TextStyle(fontSize: 12))),
                  Tab(child: Text('Sports', style: TextStyle(fontSize: 12))),
                  Tab(
                      child: Text('Entertainments',
                          style: TextStyle(fontSize: 12))),
                ],
                controller: _controller,
                indicatorColor: Color(0xFF2E2A43),
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1551292083-5d458a10336d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRyZW5kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('1 hrs',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w600)),
                              Text('Celebrity',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          Text(
                              'Top 5: Wanda Vision Things to know about the inociz marvel villian',
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('hollywoodlife',
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w600)),
                              Spacer(),
                              Icon(EvaIcons.bookmark, color: Color(0xFFFFFFFF)),
                              Icon(EvaIcons.share, color: Color(0xFFFFFFFF)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E2A43).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1612831660861-77203e9b922e?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Hollywoodlife',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text('1 hrs',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                      'Top 5: Wanda Vision Things to know about the inociz marvel villian',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('celebrity'.toUpperCase()),
                                    Spacer(),
                                    Icon(EvaIcons.bookmark),
                                    Icon(EvaIcons.share),
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 10,
                    endIndent: 8,
                    indent: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E2A43).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1612831660861-77203e9b922e?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Hollywoodlife',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text('1 hrs',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                      'Top 5: Wanda Vision Things to know about the inociz marvel villian',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('celebrity'.toUpperCase()),
                                    Spacer(),
                                    Icon(EvaIcons.bookmark),
                                    Icon(EvaIcons.share),
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 10,
                    endIndent: 8,
                    indent: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E2A43).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1612831660861-77203e9b922e?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Hollywoodlife',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text('1 hrs',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                      'Top 5: Wanda Vision Things to know about the inociz marvel villian',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('celebrity'.toUpperCase()),
                                    Spacer(),
                                    Icon(EvaIcons.bookmark),
                                    Icon(EvaIcons.share),
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 10,
                    endIndent: 8,
                    indent: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E2A43).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1612831660861-77203e9b922e?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Hollywoodlife',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text('1 hrs',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                      'Top 5: Wanda Vision Things to know about the inociz marvel villian',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('celebrity'.toUpperCase()),
                                    Spacer(),
                                    Icon(EvaIcons.bookmark),
                                    Icon(EvaIcons.share),
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 10,
                    endIndent: 8,
                    indent: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E2A43).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1612831660861-77203e9b922e?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Hollywoodlife',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Text('1 hrs',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                      'Top 5: Wanda Vision Things to know about the inociz marvel villian',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('celebrity'.toUpperCase()),
                                    Spacer(),
                                    Icon(EvaIcons.bookmark),
                                    Icon(EvaIcons.share),
                                  ],
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 10,
                    endIndent: 8,
                    indent: 8,
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                Container(
                  child: Text('Hello'),
                ),
              ],
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
