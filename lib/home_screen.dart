import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Bca_payment.dart';
import 'package:gym_app/Bri_payment.dart';
import 'package:gym_app/colors.dart';
import 'package:gym_app/daily_screen.dart';
import 'package:gym_app/members_screen.dart';
import 'package:gym_app/news_feed.dart';
import 'package:gym_app/payment_screen.dart';
import 'package:gym_app/profil_screen.dart';
import 'package:gym_app/transaction_screen.dart';
import 'package:gym_app/jadwal_latihan_screen.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    DailyScreen(),
    TransactionScreen(),
    PaymentScreen(),
    ProfilScreen(),
    BRIPage(),
    BCAPage(),
    JadwalScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: buttoncolor,
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profil.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ekawidiautama',
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
  title: Row(
    children: [
      const Icon(Icons.people), // Icon for Members
      const SizedBox(width: 10), // Add some space between icon and text
      Text('Member'),
    ],
  ),
  onTap: () {
    Navigator.pop(context); // Close the drawer
    Navigator.push(context, MaterialPageRoute(builder: (context) => Members()));
    // Update UI based on drawer item selected
  },
),
ListTile(
  title: Row(
    children: [
      const Icon(Icons.article), // Icon for Berita
      const SizedBox(width: 10), // Add some space between icon and text
      Text('Berita'),
    ],
  ),
  onTap: () {
    Navigator.pop(context); // Close the drawer
    Navigator.push(context, MaterialPageRoute(builder: (context) => NewsFeed()));
    // Update UI based on drawer item selected
  },
),
ListTile(
  title: Row(
    children: [
      const Icon(Icons.calendar_today), // Icon for Jadwal Latihan
      const SizedBox(width: 10), // Add some space between icon and text
      Text('Jadwal Latihan'),
    ],
  ),
  onTap: () {
    Navigator.pop(context); // Close the drawer
    Navigator.push(context, MaterialPageRoute(builder: (context) => JadwalScreen()));
    // Go to the new screen
  },
),
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      CupertinoIcons.home,
      CupertinoIcons.creditcard,
      CupertinoIcons.money_dollar,
      CupertinoIcons.person,
    ];
    return AnimatedBottomNavigationBar(
      onTap: (index) {
        setTabs(index);
      },
      backgroundColor: primary,
      icons: iconItems,
      splashColor: secondary,
      inactiveColor: black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      elevation: 2,
    );
  }

  void setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
