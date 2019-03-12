import 'package:flutter/material.dart';
import 'stacked_icon.dart';
import 'map.dart';
import 'listApi.dart';
import 'qrScanner.dart';
import 'package:myapp/NavigationDrawer/navigation.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.green),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new StackedIcons(),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 10.0, top: 0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MapPage()));
                  },
                  child: new Container(
                    height: 70.0,
                    alignment: Alignment.center,
                    child: new Text(
                      "Sample Map Page",
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 10.0, top: 0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListPage()));
                  },
                  child: new Container(
                    height: 70.0,
                    alignment: Alignment.center,
                    child: new Text(
                      "Sample List API Call",
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 10.0, top: 0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QRScannerPage()));
                  },
                  child: new Container(
                    height: 70.0,
                    alignment: Alignment.center,
                    child: new Text(
                      "QR Scanner Sample",
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 10.0, top: 0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyDrawer()));
                  },
                  child: new Container(
                    height: 70.0,
                    alignment: Alignment.center,
                    child: new Text(
                      "Navigation Drawer Sample",
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
