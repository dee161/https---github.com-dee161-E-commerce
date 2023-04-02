import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://thumbs.dreamstime.com/b/male-avatar-icon-flat-style-male-user-icon-cartoon-man-avatar-hipster-vector-stock-91462914.jpg";
    return Drawer(
      child: Container(
        color: Colors.lightBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.lightBlue),
                accountName: Text("Deepanshu"),
                accountEmail: Text("Deekmwt590"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title:  Text("Home"
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.app,
                color: Colors.black,
              ),
              title:  Text("app"
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.black,
              ),
              title:  Text("settings"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
