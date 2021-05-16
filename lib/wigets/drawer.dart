import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageURL = "https://avatars.githubusercontent.com/u/24780767?v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text('Suvam Basak'),
              accountEmail: Text('suvambasak2008@gmail.com'),
              // currentAccountPicture: Image.network(imageURL),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
              margin: EdgeInsets.zero,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            title: Text(
              'Home',
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.verified_user_outlined,
              color: Colors.grey,
            ),
            title: Text(
              'Profile',
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.details_outlined,
              color: Colors.grey,
            ),
            title: Text(
              'About',
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
