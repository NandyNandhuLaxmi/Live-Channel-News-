import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Radios extends StatefulWidget {
  @override
  _RadiosState createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  final List<Map> details = [
    {"radio": "181.FM Rock 181", "type": "Music"},
    {"radio": "Sana FM", "type": "Music"},
    {"radio": "Helixy", "type": "Music"},
    {"radio": "Bad Hub", "type": "Music"},
    {"radio": "BBC World Service News", "type": "Music"},
    {"radio": "Classic FM", "type": "Music"},
    {"radio": "Goodtime Radio WRJQ", "type": "Music"},
    {"radio": "Got Radio", "type": "Music"},
    {"radio": "Hindi Desi", "type": "Music"},
  ];

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
        body: ListView.builder(
          itemCount: details.length,
          itemBuilder: (con, ind) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1613719665515-9ffcd7f9ff62?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                ),
                title: Text(details[ind]['radio']),
                subtitle: Text(details[ind]['type']),
                trailing: Icon(Icons.arrow_forward_ios_outlined));
          },
        ));
  }
}
