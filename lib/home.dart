import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.green),
      ),
      body: MainContent(),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(() {
           _bottomNavIndex = index;

          });
        },
        items: [
          new BottomNavigationBarItem(
              title: new Text(''), icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text(''), icon: new Icon(Icons.local_offer)),
          new BottomNavigationBarItem(
              title: new Text(''), icon: new Icon(Icons.message)),
          new BottomNavigationBarItem(
              title: new Text(''), icon: new Icon(Icons.notifications))
        ],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      "Explore",
                      style: new TextStyle(
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                new SizedBox(
                  height: 20.0,
                ),
                Row(children: <Widget>[
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Colors.redAccent),
                        child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(Icons.drive_eta, color: Colors.white),
                              new Text(
                                "Motor",
                                style: new TextStyle(color: Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new Container(
                        height: 100.0,
                        child: new Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.local_offer,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text(
                                          "Classified",
                                          style: new TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius:
                                            new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.beenhere,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text(
                                          "Service",
                                          style: new TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: new Container(
                        height: 100.0,
                        child: new Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.account_balance,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text(
                                          "Properties",
                                          style: new TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius:
                                            new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.art_track,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text(
                                          "Jobs",
                                          style: new TextStyle(
                                              color: Colors.white),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",
                            style: new TextStyle(fontSize: 18.0))),
                    new Expanded(
                        child: new Text(
                      "View All",
                      style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://www.cycleworld.com/sites/cycleworld.com/files/styles/2000_1x_/public/images/2017/09/yamaha-yzf-r1-tbb-2017.jpg?itok=uJN77kjx&fc=50,50'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrNgy97U_8QVWlp7SfS-I2pkUNF9aJpmiKueKqcJGTs1Tysec9'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://s2.paultan.org/image/2018/02/2018-Yamaha-YZF-GYTR-24-630x394.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",
                            style: new TextStyle(fontSize: 18.0))),
                    new Expanded(
                        child: new Text(
                      "View All",
                      style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://www.cycleworld.com/sites/cycleworld.com/files/styles/2000_1x_/public/images/2017/09/yamaha-yzf-r1-tbb-2017.jpg?itok=uJN77kjx&fc=50,50'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrNgy97U_8QVWlp7SfS-I2pkUNF9aJpmiKueKqcJGTs1Tysec9'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://s2.paultan.org/image/2018/02/2018-Yamaha-YZF-GYTR-24-630x394.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Popular Trending",
                            style: new TextStyle(fontSize: 18.0))),
                    new Expanded(
                        child: new Text(
                      "View All",
                      style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://www.cycleworld.com/sites/cycleworld.com/files/styles/2000_1x_/public/images/2017/09/yamaha-yzf-r1-tbb-2017.jpg?itok=uJN77kjx&fc=50,50'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrNgy97U_8QVWlp7SfS-I2pkUNF9aJpmiKueKqcJGTs1Tysec9'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 140.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new NetworkImage(
                                          'https://s2.paultan.org/image/2018/02/2018-Yamaha-YZF-GYTR-24-630x394.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("Play Station",
                                style: new TextStyle(fontSize: 16.0))
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
