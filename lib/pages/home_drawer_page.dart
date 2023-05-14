import 'package:flutter/material.dart';
import 'package:gdsc_flutter_group/pages/widgets/widget_text_page.dart';

import '../materials/text.dart';

import '../materials/color.dart';

class HomeDrawerPage extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  HomeDrawerPage({super.key, required this.scaffoldKey});

  @override
  State<HomeDrawerPage> createState() =>
      _HomeDrawerPageState(scaffoldKey: scaffoldKey);
}

class _HomeDrawerPageState extends State<HomeDrawerPage> {
  GlobalKey<ScaffoldState> scaffoldKey;

  _HomeDrawerPageState({required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: theme_dark_brown),
            currentAccountPicture: CircleAvatar(),
            accountName: Text('Boss'),
            accountEmail: Text('boss@gmail.com'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 5),
            child: Text('GDSC NCKU Flutter Team'),
          ),
          ListTile(
            leading: Icon(Icons.disc_full),
            title: Text('公告'),
            onTap: () {
              scaffoldKey.currentState!.openEndDrawer(); //close drawler
            },
          ),
          ListTile(
            leading: Icon(Icons.disc_full),
            title: Text('資源分享'),
            onTap: () {
              scaffoldKey.currentState!.openEndDrawer(); //close drawler
            },
          ),
          ListTile(
            leading: Icon(Icons.disc_full),
            title: Text('Dart教學'),
            onTap: () {
              scaffoldKey.currentState!.openEndDrawer(); //close drawler
            },
          ),
          ListTile(
            leading: Icon(Icons.disc_full),
            title: Text('Widget'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WidgetTextPage()));
              scaffoldKey.currentState!.openEndDrawer(); //close drawler
            },
          ),

          //Websites
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Text('Websites'),
          ),
          ListTile(
              leading: Icon(Icons.school),
              title: Text('GDSC'),
              onTap: () => {} //_launchURL(),
              ),
          //Others
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Text('Others'),
          ),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('設定 Settings'),
              onTap: () {
                //Navagtor
                scaffoldKey.currentState!.openEndDrawer(); //close drawer
              }),
          SizedBox(height: 50),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('登出 Sign Out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
