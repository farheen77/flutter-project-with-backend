import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.indigo[300],
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/icon.jpeg'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Jimmy',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 40, left: 40),
          child: ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.indigo,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 40, left: 40),
          child: ListTile(
            leading: Icon(
              Icons.settings_applications,
              color: Colors.indigo,
            ),
            title: Text(
              'Setting',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(40),
          child: ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.indigo,
            ),
            title: Text(
              'Exit',
              style: TextStyle(fontSize: 18),
            ),
          ),
        )
      ],
    ));
  }
}
