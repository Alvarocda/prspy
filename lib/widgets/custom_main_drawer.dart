import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

///
///
///
class CustomMainDrawer extends StatelessWidget {
  ///
  ///
  ///
  const CustomMainDrawer({Key? key}) : super(key: key);

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(
                'assets/images/pr_logo.png',
              ),
            ),
            ListTile(
              title: Wrap(
                children: const <Widget>[
                  Text('Forums'),
                  Icon(
                    Icons.open_in_new,
                    size: 10,
                  ),
                ],
              ),
              onTap: () {
                launchUrlString('https://www.realitymod.com/forum/');
              },
            ),
            ListTile(
              title: Wrap(
                children: const <Widget>[
                  Text('News'),
                  Icon(
                    Icons.open_in_new,
                    size: 10,
                  ),
                ],
              ),
              onTap: () {
                launchUrlString('https://www.realitymod.com/');
              },
            ),
            ListTile(
              title: Wrap(
                children: const <Widget>[
                  Text('Donate'),
                  Icon(
                    Icons.open_in_new,
                    size: 10,
                  ),
                ],
              ),
              onTap: () {
                launchUrlString(
                  'https://www.realitymod.com/forum/misc.php?do=donate',
                );
              },
            ),
            ListTile(
              title: Wrap(
                children: const <Widget>[
                  Text('Map Gallery'),
                  Icon(
                    Icons.open_in_new,
                    size: 10,
                  ),
                ],
              ),
              onTap: () {
                launchUrlString('https://www.realitymod.com/mapgallery/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
