import 'package:flutter/material.dart';

class DrawerSample extends StatelessWidget {
  const DrawerSample({Key? key}) : super(key: key);

  TextButton generateDrawer(
      BuildContext context, String title, Drawer? drawer, Drawer? endDrawer) {
    var backButton = TextButton(
        child: const Text('back'),
        onPressed: () => {
              Navigator.pop(context) // close the drawer
            });

    return TextButton(
      child: Text(title),
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Scaffold(
                  appBar: AppBar(title: Text(title)),
                  drawer: drawer,
                  endDrawer: endDrawer,
                  body: backButton);
            },
          ),
        )
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          generateDrawer(context, 'Default', const Drawer(), null),
          generateDrawer(context, 'EndDrawer', null, const Drawer()),
          generateDrawer(
            context,
            'Customize',
            null,
            Drawer(
              backgroundColor: Colors.cyan,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const [
                  DrawerHeader(child: Text('header')),
                  ListTile(
                    tileColor: Colors.white,
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                  ),
                ],
              ),
            ),
          ),
          generateDrawer(
            context,
            'Customize2',
            null,
            Drawer(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const [
                  DrawerHeader(
                      child: Text('header'),
                      decoration: BoxDecoration(color: Colors.orange)),
                  ListTile(
                    tileColor: Colors.white,
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
