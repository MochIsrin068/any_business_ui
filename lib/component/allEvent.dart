import 'package:flutter/material.dart';
import './dataGrid.dart';

class AllEvent extends StatefulWidget {
  String title;

  AllEvent(this.title);

  _AllEventState createState() => _AllEventState();
}

class _AllEventState extends State<AllEvent> {
  @override
  Widget build(BuildContext context) {
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
                icon: Icon(Icons.shopping_basket, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 3,
          // crossAxisSpacing: 5.0,
          mainAxisSpacing: 15.0,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: gridCard,
        )
      ],
    ));
  }
}
