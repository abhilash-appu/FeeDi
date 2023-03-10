import 'package:flutter/material.dart';
import 'package:sahara/sign_in.dart';
import '../screens/about.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/pastorders.dart';
import '../spashScreen.dart';
import '../widgets/tabs.dart';

class MainDrawer extends StatelessWidget {
  int value = 0;
  // final receiverName;
  //MainDrawer(this.receiverName);
  Widget buildListTile(String title, Function tapHandler, Icon symbol) {
    return ListTile(
      leading: symbol,
      title: Text(title),
      onTap: tapHandler,
    );
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            // alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(top: 120, left: 10),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Hello Reciever',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ]),

                /* GestureDetector(
                  child: Text(
                    'View Profile Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                )*/

                //FlatButton(onPressed: () {}, child: Text('View Profile')),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Container(
            color: Colors.cyan[100],
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Icon(
                Icons.history,
                color: Colors.black,
                size: 26,
              ),
              title: Text('Your Orders',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Tabs.routeName);
              },
            ),
          ),
          Divider(color: Colors.black),
          Container(
            color: Colors.cyan[200],
            child: ListTile(
              contentPadding: EdgeInsets.all(5),
              leading: Icon(
                Icons.info,
                color: Colors.black,
                size: 26,
              ),
              title: Text('About us',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(AboutUs.routeName);
              },
            ),
          ),
          Divider(color: Colors.black),
          Container(
            color: Colors.cyan[300],
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
                size: 26,
              ),
              title: Text('Logout',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              onTap: () {
                value = 1;
                if (value == 1) {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).popUntil(ModalRoute.withName('/'));
                  Navigator.of(context).pushNamed(SignIn.routeName);
                }
              },
            ),
          ),
          Divider(color: Colors.black),

          /*  SizedBox(
            height: 5,
          ),
          //  buildListTile('Hello Username', () {}),
          // buildListTile('View Profile', () {}),
          buildListTile(
              'Your Orders',
              () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(PastOrdersScreen.routeName);
              },
              Icon(
                Icons.history,
                color: Colors.black,
              )),
          /*    SizedBox(
            height: 5,
          ),
          buildListTile(
              'Settings', () {}, Icon(Icons.settings, color: Colors.black)),*/
          SizedBox(
            height: 5,
          ),
          buildListTile(
              'About Us', () {
                Navigator.of(context).pop();
                 Navigator.of(context).pushNamed(AboutUs.routeName);
              }, Icon(Icons.info, color: Colors.black)),
          SizedBox(
            height: 5,
          ),
          buildListTile('Logout', () {
            value=1;
            if(value==1)
            {
              Navigator.of(context).popUntil(ModalRoute.withName('/'));
              FirebaseAuth.instance.signOut();
             
            }
       
              // Navigator.of(context).pushNamed(SplashScreen.routeName);
          },
              Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ))*/
        ],
      ),
    );
  }
}
