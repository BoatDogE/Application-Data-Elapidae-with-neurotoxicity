import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:project/snake/Snake1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: ListView(
          padding: EdgeInsets.only(left: 0.0),
          children: <Widget>[
            SizedBox(height: 0.0),
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90.0,
                    width: 1000,
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(55.0),
                          bottomRight: Radius.circular(55.0)),
                    ),
                    child: Text('หน้าหลัก',
                        style: TextStyle(
                            color: Colors.black, height: 2.5, fontSize: 35.0),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30.0),
            Card(
                margin:
                    EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 20),
                color: Colors.red[700],
                elevation: 40,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, _launchCallertel1());
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  splashColor: Colors.black,
                  child: Text(
                    '199 จับงูเข้าบ้าน',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            Card(
              color: Colors.red[700],
              margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              elevation: 15,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, _launchCallertel2());
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  '1669 เกิดเหตุฉุกเฉิน ',
                  style: TextStyle(fontSize: 30.0),
                ),
                textColor: Colors.white,
                padding: const EdgeInsets.all(10.0),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(height: 0.0),
            SizedBox(height: 15.0),
            Text(
              'วิธีปฐมพยาบาลเบื้องต้น',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Card(
              margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 20),
              color: Colors.white,
              elevation: 4,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Colors.white,
                elevation: 4.0,
                onPressed: () {
                  Navigator.pushNamed(context, '/Heal');
                },
                child: Image.asset(
                  'assets/images/snakemedic.jpg',
                  height: 120,
                  width: 330,
                  fit: BoxFit.cover,
                ),
                padding: const EdgeInsets.all(5.0),
              ),
            ),
            Text('วิธีป้องกันงูเข้าบ้าน',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
            Card(
              margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
              color: Colors.white,
              elevation: 0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Colors.white,
                elevation: 4.0,
                onPressed: () {
                  Navigator.pushNamed(context, '/Protect');
                },
                child: Image.asset(
                  'assets/images/pro.jpg',
                  height: 120,
                  width: 330,
                  fit: BoxFit.cover,
                ),
                padding: const EdgeInsets.all(5.0),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              color: Colors.white,
              margin: EdgeInsets.all(0.0),
            ),
          ],
        ),
      ),
    );
  }

  buildRoomList() {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: furnitures.length,
        itemBuilder: (BuildContext context, int index) {
          Map furniture = furnitures[index];

          return RoomItem(
            furniture: furniture,
          );
        },
      ),
    );
  }

  buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          " ",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w800,
          ),
        ),
        FlatButton(
          child: Text(
            "",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  buildProductList() {
    return Container(
      height: 140.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: furnitures.length,
        itemBuilder: (BuildContext context, int index) {
          Map furniture = furnitures[index];

          return ProductItem(
            furniture: furniture,
          );
        },
      ),
    );
  }
}

List furnitures = [
  {
    "name": "งูทับสมิงคลา",
    "img": "assets/images/malayan.jpg",
  },
  {
    "name": "งูสามเหลี่ยม",
    "img": "assets/images/banded.jpg",
  },
];

class ProductItem extends StatelessWidget {
  final Map furniture;

  ProductItem({required this.furniture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          //  Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (BuildContext context) {
          //         return About();
          //      },
          //    ),
          //  );
        },
        /* child: Container(
          height: 140,
          width: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "${furniture["img"]}",
              height: 140,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
        ),*/
      ),
    );
  }
}

class RoomItem extends StatelessWidget {
  final Map furniture;

  RoomItem({required this.furniture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                if (this.furniture[{
                      "name": "งูทับสมิงคลา",
                      "img": "assets/images/malayan.jpg",
                    }] ==
                    this.furniture[{
                      "name": "งูทับสมิงคลา",
                      "img": "assets/images/malayan.jpg",
                    }]) {
                  return Snake1();
                }

                return Home();
              },
            ),
          );
        },
        child: Container(
          height: 275,
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                furniture['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "${furniture["img"]}",
                  height: 240,
                  width: 280,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//เบอร์โทรอยู่ตรงนี้
_launchCallertel1() async {
  const url = "tel:199";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCallertel2() async {
  const url = "tel:1669";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
