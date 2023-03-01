import 'package:flutter/material.dart';
import 'package:sahara/screens/receiver_home_screen.dart';

import 'package:auto_size_text/auto_size_text.dart';
//import './donor_main.dart';
//import './add_order.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/about-us';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context)
                    .popAndPushNamed(ReceiverHomeScreen.routeName);
              }),
          title: Text('About this app'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Colors.yellow, Colors.white]),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("image/tle.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Text(
                    'We ',
                    style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600),
                  ),
                  // AutoSizeText('at Sahara are aimed to provide a help to society in a way which is beneficiary for everyone. This app is a platform that works to connect the avaliable donors to recpients who can provide the needy. ')
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                    child:
                        // Text('We ',style:TextStyle(fontSize: 40,fontStyle: FontStyle.italic) ),
                        AutoSizeText(
                            '                 aim to provide help to the society in a way which is beneficial for everyone. This app is a platform that works to connect the avaliable donors to recpients who can provide the needy. ',
                            style: TextStyle(
                              fontSize: 18,
                            ))),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                      '     " Something that sustains you, supports you by giving you help, strength, or encouragement."',
                      style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'We are team of friends, still pursuing education in our fields. We are making this app to try our maximum to reduce Food Wastage.'),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.star, size: 15),
                        Text('Developers:'),
                        Text('Abhilash K Mathew'),
                        Text('Alan Sebastian'),
                        Text('Anil Sreechand K'),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
