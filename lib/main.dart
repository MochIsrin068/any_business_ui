import 'package:flutter/material.dart';
import './component/component.dart';
import './component/category/photo.dart';
import './component/category/market.dart';
import './component/category/tailor.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Bussiness App',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _headerRow = Row(
      children: <Widget>[
        Container(
          // height: 100.0,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Hi, Dave',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 30.0)),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/users/user-lg.jpg'),
              )
            ],
          ),
        )
      ],
    );

    final _ket = Container(
      padding: EdgeInsets.only(left: 15.0),
      child: Text('Need a professional workers?',
          style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold)),
    );

    final _searchBox = Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(colors: [Colors.orange, Colors.pink])),
      child: Material(
        color: Colors.transparent,
        elevation: 0.0,
        borderRadius: BorderRadius.circular(5.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              // contentPadding: EdgeInsets.only(top: 15.0, left: 15.0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30.0,
              ),
              hintText: 'Find Now',
              hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );

    final _boxMenu = Container(
        padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Photo('Photographer')));
                    },
                    borderRadius: BorderRadius.circular(20.0),
                    highlightColor: Colors.orange,
                    splashColor: Colors.pink,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      width: MediaQuery.of(context).size.width / 4 - 15,
                      child: Center(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.pink,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Photograph',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Market('Market')));
                    },
                    borderRadius: BorderRadius.circular(20.0),
                    highlightColor: Colors.orange,
                    splashColor: Colors.pink,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      width: MediaQuery.of(context).size.width / 4 - 15,
                      child: Center(
                        child: Icon(
                          Icons.store_mall_directory,
                          color: Colors.pink,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Market',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Tailor('Tailor')));
                    },
                    borderRadius: BorderRadius.circular(20.0),
                    highlightColor: Colors.orange,
                    splashColor: Colors.pink,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      width: MediaQuery.of(context).size.width / 4 - 15,
                      child: Center(
                        child: Icon(
                          Icons.content_cut,
                          color: Colors.pink,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Tailor',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          child: Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              height: 220.0,
                              padding: EdgeInsets.all(20.0),
                              child: Column(children: <Widget>[
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.pink,
                                  size: 85.0,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'Sorry This Menu Not Active !!',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                            ),
                          ));
                    },
                    borderRadius: BorderRadius.circular(20.0),
                    highlightColor: Colors.orange,
                    splashColor: Colors.pink,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 80.0,
                      width: MediaQuery.of(context).size.width / 4 - 15,
                      child: Center(
                          child: Icon(
                        Icons.more_horiz,
                        color: Colors.pink,
                        size: 35.0,
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'More',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ));

    final List<Tab> _tab = [
      Tab(icon: Icon(Icons.home)),
      Tab(icon: Icon(Icons.search)),
      Tab(icon: Icon(Icons.chat)),
    ];

    final _noPage = Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Im Sorry This Page No Active !!',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );

    return Scaffold(
      body: TabBarView(controller: controller, children: <Widget>[
        ListView(
          children: <Widget>[
            SizedBox(height: 25.0),
            _headerRow,
            SizedBox(height: 5.0),
            _ket,
            SizedBox(height: 20.0),
            _searchBox,
            SizedBox(height: 10.0),
            _boxMenu,
            SizedBox(height: 15.0),
            Component('Popular'),
            SizedBox(height: 10.0),
            CardComponent(
              'assets/big/img1.jpg',
              'assets/big/img2.jpg',
              'assets/big/img3.jpg',
              'assets/big/img4.jpg',
              'Food Festival',
              'Lap. MTQ, 19 Apr | 10.00',
              'Coocing Class',
              'Technos Studio, 1 Apr | 08.00',
              'Ice Cream Challenges',
              'Lap. MTQ, 20 Apr | 11.00',
              'Bussiness CakeFest',
              'Technos Studio, 12, Mar | 12.00',
            ),
            SizedBox(height: 15.0),
            Component('Umcoming Meetups'),
            SizedBox(height: 10.0),
            CardComponent(
              'assets/big/img5.jpg',
              'assets/big/img6.jpg',
              'assets/big/img1.jpg',
              'assets/big/img3.jpg',
              'Creative FoodFest',
              'Lippo Plaza, 27 Mar | 10.00',
              'Environment Care',
              'Totonipa Beach, 19 Mar | 10.00',
              'Food Festival',
              'Lap. MTQ, 19 Apr | 10.00',
              'Ice Cream Challenges',
              'Lap. MTQ, 20 Apr | 11.00',
            ),
          ],
        ),
        _noPage,
        _noPage
      ]),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          // isScrollable: true,
          controller: controller,
          labelColor: Colors.pink,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.grey,
          tabs: _tab,
        ),
      ),
    );
  }
}
