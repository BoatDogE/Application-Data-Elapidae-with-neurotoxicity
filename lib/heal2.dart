import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

// ignore: unused_element
_launchURLBrowser1() async {
  const url = 'https://www.youtube.com/watch?v=9U7tPDDtxQE';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Heal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFCC80),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: <Widget>[
                Text('การปฐมพยาบาล',
                    style: TextStyle(
                        //fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0)),
                SizedBox(width: 10.0),
                Text('(เบื้องต้น)',
                    style: TextStyle(
                        //fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: MediaQuery.of(context).size.height - 18.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'ขั้นตอนการปฐมพยาบาล (ปี2563) มีดังนี้',
                      style: TextStyle(
                          height: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Container(
                      height: 75.0,
                      width: 60.0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    /*Padding(
                      padding: EdgeInsets.all(20.0),
                      child:
                          Image.asset('assets/images/pro2.jpg', height: 110.0),
                    ),*/
                    Text(
                      '1.พาผู้ป่วยไปพบแพทย์ให้เร็วที่สุด และพยายามจำลักษณะหรือสายพันธุ์ของงูให้ได้',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                    Text(
                      '2.ล้างแผลด้วยน้ำสะอาด หรือน้ำยาฆ่าเชื้อ             ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                    Text(
                      '3.พยายามเคลื่อนไหวตัวผู้ป่วยให้น้อยที่สุด โดยเฉพาะบริเวณที่ถูกกัด',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                    Text(
                      '4.ดามบริเวณที่ถูกงูกัด และปิดแผลด้วยผ้าสะอาด หรือผ้าก๊อซ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                    Text(
                      '5.ห้ามใช้สมุนไพร ห้ามดูดหรือกรีดแผลเด็ดขาด เพราะเสี่ยงต่อการติดเชื้อ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                    Text(
                      '6.ห้ามขันชะเนาะ เพราะกล้ามเนื้ออาจตาย และห้ามประคบเย็น',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: ListTile(
                        /// trailing: Icon(Icons.subdirectory_arrow_right),
                        leading: Image.asset(
                          'assets/images/yt.png',
                          fit: BoxFit.cover,
                          width: 95,
                          height: 200,
                        ),
                        onTap: _launchURLBrowser1,
                        title: Text('ขั้นตอนการปฐมพยาบาล ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 14.0)),
                        subtitle: Text('(อยู่ช่วง 9.10)'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
