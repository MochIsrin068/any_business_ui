import 'package:flutter/material.dart';

class _Text extends StatelessWidget {
  String text, time;

  _Text(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // width: 300.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          )),
    );
  }
}

class _Time extends StatelessWidget {
  String time;
  _Time(this.time);

  @override
  Widget build(BuildContext context) {
    return Text(time,
        style: TextStyle(
            fontFamily: 'Montserrat', color: Colors.grey, fontSize: 10.0));
  }
}

class BuildGrid extends StatelessWidget {
  String assetImage1;

  String textTitle1;
  String textTime1;

  BuildGrid(
    this.assetImage1,
    this.textTitle1,
    this.textTime1,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      // height: 280.0,
      child: Container(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView(
            children: <Widget>[
              Container(
                height: 80.0,
                // width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(assetImage1), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                // child: Image.asset('assets/big/img1.jpg'),
              ),
              _Text(textTitle1),
              _Time(textTime1),
            ],
          )),
    );
  }
}
