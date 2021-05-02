import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagelUrl =
        'http://ahasan.ekusheyit.com/view/images/ahasan-habib.jpg';
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Ahasan Habib'),
              accountEmail: Text('ahasanhabib16@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imagelUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text('Email Me'),
          ),
        ],
      ),
    );
  }
}
