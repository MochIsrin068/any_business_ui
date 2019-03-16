import 'package:flutter/Material.dart';
import './allEvent.dart';

class Component extends StatelessWidget {
  String title;

  Component(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 15.0, left: 15.0),
        alignment: Alignment.topRight,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
          Text(title,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold)),
          FlatButton(
              onPressed: () {
                if (title == 'Popular') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AllEvent(title)));
                } else if (title == 'Umcoming Meetups') {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AllEvent(title)));
                }
              },
              textColor: Colors.pink,
              // color: Colors.transparent,
              child: Text(
                'SEE ALL',
                style: TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              )),
        ]));
  }
}

class _Text extends StatelessWidget {
  String text, time;

  _Text(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 300.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
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
        style: TextStyle(fontFamily: 'Montserrat', color: Colors.grey));
  }
}

class CardComponent extends StatelessWidget {
  String assetImage1;
  String assetImage2;
  String assetImage3;
  String assetImage4;

  String textTitle1;
  String textTime1;

  String textTitle2;
  String textTime2;

  String textTitle3;
  String textTime3;

  String textTitle4;
  String textTime4;

  CardComponent(
      this.assetImage1,
      this.assetImage2,
      this.assetImage3,
      this.assetImage4,
      this.textTitle1,
      this.textTime1,
      this.textTitle2,
      this.textTime2,
      this.textTitle3,
      this.textTime3,
      this.textTitle4,
      this.textTime4);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280.0,
        child: ListView(
          padding: EdgeInsets.only(left: 15.0),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Card(
                elevation: .5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180.0,
                      width: 300.0,
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
            // SizedBox(
            //   width: 15.0,
            // ),
            Card(
                elevation: .5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(assetImage2), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                      ),
                      // child: Image.asset('assets/big/img1.jpg'),
                    ),
                    _Text(textTitle2),
                    _Time(textTime2),
                  ],
                )),
            Card(
                elevation: .5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(assetImage3), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                      ),
                      // child: Image.asset('assets/big/img1.jpg'),
                    ),
                    _Text(textTitle3),
                    _Time(textTime3),
                  ],
                )),
            Card(
                elevation: .5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(assetImage4), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                      ),
                      // child: Image.asset('assets/big/img1.jpg'),
                    ),
                    _Text(textTitle4),
                    _Time(textTime4),
                  ],
                )),
          ],
        ));
  }
}
