import 'package:flutter/material.dart';

class Tailor extends StatefulWidget {
  String title;

  Tailor(this.title);

  _TailorState createState() => _TailorState();
}

class _Text extends StatelessWidget {
  String text, time;

  _Text(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 3 - 30,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          )),
    );
  }
}

class _Time extends StatelessWidget {
  String time;
  _Time(this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: Text(time,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Montserrat', color: Colors.grey, fontSize: 10.0)),
    );
  }
}

class _TailorState extends State<Tailor> {
  @override
  Widget build(BuildContext context) {
    final _tailor = Container(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: ListView(shrinkWrap: true, children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                child: Material(
                    elevation: .5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      highlightColor: Colors.pink,
                      splashColor: Colors.orange,
                      onTap: () {
                        showDialog(
                            context: context,
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 496.0,
                                padding: EdgeInsets.all(20.0),
                                child: Column(children: <Widget>[
                                  Hero(
                                      tag: 'ok',
                                      child: Image.asset(
                                        'assets/big/img1.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _Text('Tailor Fest'),
                                  _Time('Lippo Plaza, 27 Mar | 10.00'),
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.pink,
                                          size: 30.0,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.exit_to_app,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            child: Hero(
                                tag: 'ok',
                                child: Image.asset(
                                  'assets/big/img1.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            // child: Image.asset('assets/big/img1.jpg'),
                          ),
                          _Text('Tailor Fest'),
                          _Time('Lippo Plaza, 27 Mar | 10.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    )),
              ),
              // SizedBox(width: 10.0),
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                child: Material(
                    elevation: .5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      highlightColor: Colors.pink,
                      splashColor: Colors.orange,
                      onTap: () {
                        showDialog(
                            context: context,
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 496.0,
                                padding: EdgeInsets.all(20.0),
                                child: Column(children: <Widget>[
                                  Hero(
                                      tag: 'ok1',
                                      child: Image.asset(
                                        'assets/big/img2.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _Text('Tailor Fest'),
                                  _Time('Lippo Plaza, 27 Mar | 10.00'),
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.pink,
                                          size: 30.0,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.exit_to_app,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            child: Hero(
                                tag: 'ok1',
                                child: Image.asset(
                                  'assets/big/img2.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            // child: Image.asset('assets/big/img1.jpg'),
                          ),
                          _Text('Tailor Fest'),
                          _Time('Lippo Plaza, 27 Mar | 10.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    )),
              ),
              // SizedBox(width: 10.0),
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                child: Material(
                    elevation: .5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      highlightColor: Colors.pink,
                      splashColor: Colors.orange,
                      onTap: () {
                        showDialog(
                            context: context,
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 496.0,
                                padding: EdgeInsets.all(20.0),
                                child: Column(children: <Widget>[
                                  Hero(
                                      tag: 'ok3',
                                      child: Image.asset(
                                        'assets/big/img3.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _Text('Tailor Fest'),
                                  _Time('Lippo Plaza, 27 Mar | 10.00'),
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.pink,
                                          size: 30.0,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.exit_to_app,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            child: Hero(
                                tag: 'ok3',
                                child: Image.asset(
                                  'assets/big/img3.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            // child: Image.asset('assets/big/img1.jpg'),
                          ),
                          _Text('Tailor Fest'),
                          _Time('Lippo Plaza, 27 Mar | 10.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                child: Material(
                    elevation: .5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      highlightColor: Colors.pink,
                      splashColor: Colors.orange,
                      onTap: () {
                        showDialog(
                            context: context,
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 496.0,
                                padding: EdgeInsets.all(20.0),
                                child: Column(children: <Widget>[
                                  Hero(
                                      tag: 'ok4',
                                      child: Image.asset(
                                        'assets/big/img4.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _Text('Tailor Fest'),
                                  _Time('Lippo Plaza, 27 Mar | 10.00'),
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.pink,
                                          size: 30.0,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.exit_to_app,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            child: Hero(
                                tag: 'ok4',
                                child: Image.asset(
                                  'assets/big/img4.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            // child: Image.asset('assets/big/img1.jpg'),
                          ),
                          _Text('Tailor Fest'),
                          _Time('Lippo Plaza, 27 Mar | 10.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    )),
              ),
              // SizedBox(width: 10.0),
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                child: Material(
                    elevation: .5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      highlightColor: Colors.pink,
                      splashColor: Colors.orange,
                      onTap: () {
                        showDialog(
                            context: context,
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 496.0,
                                padding: EdgeInsets.all(20.0),
                                child: Column(children: <Widget>[
                                  Hero(
                                      tag: 'ok5',
                                      child: Image.asset(
                                        'assets/big/img5.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _Text('Tailor Fest'),
                                  _Time('Lippo Plaza, 27 Mar | 10.00'),
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.pink,
                                          size: 30.0,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.exit_to_app,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            child: Hero(
                                tag: 'ok5',
                                child: Image.asset(
                                  'assets/big/img5.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            // child: Image.asset('assets/big/img1.jpg'),
                          ),
                          _Text('Tailor Fest'),
                          _Time('Lippo Plaza, 27 Mar | 10.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    )),
              ),
              // SizedBox(width: 10.0),
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                child: Material(
                    elevation: .5,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      highlightColor: Colors.pink,
                      splashColor: Colors.orange,
                      onTap: () {
                        showDialog(
                            context: context,
                            child: Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 496.0,
                                padding: EdgeInsets.all(20.0),
                                child: Column(children: <Widget>[
                                  Hero(
                                      tag: 'ok6',
                                      child: Image.asset(
                                        'assets/big/img6.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  _Text('Tailor Fest'),
                                  _Time('Lippo Plaza, 27 Mar | 10.00'),
                                  Wrap(
                                    alignment: WrapAlignment.spaceBetween,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add_shopping_cart,
                                          color: Colors.pink,
                                          size: 30.0,
                                        ),
                                      ),
                                      SizedBox(width: 20.0),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.exit_to_app,
                                          color: Colors.orange,
                                          size: 30.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              ),
                            ));
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            child: Hero(
                                tag: 'ok6',
                                child: Image.asset(
                                  'assets/big/img6.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            // child: Image.asset('assets/big/img1.jpg'),
                          ),
                          _Text('Tailor Fest'),
                          _Time('Lippo Plaza, 27 Mar | 10.00'),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ]));

    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        _tailor,
      ],
    ));
  }
}
