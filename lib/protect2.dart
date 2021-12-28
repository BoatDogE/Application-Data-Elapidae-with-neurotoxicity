import 'package:flutter/material.dart';

class Protect extends StatelessWidget {
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
          SizedBox(height: 0.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: <Widget>[
                Text('วิธีป้องกันงูเข้าบ้าน',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0)),
                SizedBox(width: 10.0),
                Text('', style: TextStyle(color: Colors.white, fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height - 140.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(65.0),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 35.0,
                      width: 60.0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ExpansionTile(
                      initiallyExpanded: false,
                      childrenPadding: EdgeInsets.only(left: 16, right: 16),
                      title: Text(
                        '1.กำจัดแหล่งอาหารของงู                              ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0),
                      ),
                      children: [
                        Text(
                          'หนู กบ เขียด ตุ๊กแก ถ้าหากบ้านของเราปล่อยให้มีสัตว์เหล่านี้อยู่เป็นจำนวนมาก เท่ากับบ้านเราคือแหล่งอาหารของงูดีดีนี่เอง   ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16.0),
                        ),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/protect/rat.jpg',
                                height: 80.0),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/protect/kob.jpg',
                                height: 80.0),
                          ),
                        ]),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: false,
                      childrenPadding: EdgeInsets.only(left: 16, right: 16),
                      title: Text(
                        '2.กำจัดแหล่งที่อยู่ของงู                              ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0),
                      ),
                      children: [
                        Text(
                          'พงหญ้า พุ่มไม้รกๆ ตอไม้ผุๆ ให้คุณจัดการตัดหรือทำลายให้หมด โพรงใต้บ้านก็เป็นแหล่งอาศัยที่งูชอบเข้าไปอยู่เช่นกัน ไม้ให้งูเข้าไปอยู่ได้ ท่อระบายน้ำให้คุณใส่ตะแกรงกั้นไว้ เพื่อไม่ให้งูเข้าใช้เป็นเส้นทางเข้ามาในบ้าน',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16.0),
                        ),
                        Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                                'assets/images/protect/pongyah.jpg',
                                height: 120.0),
                          ),
                        ]),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: false,
                      childrenPadding: EdgeInsets.only(left: 16, right: 16),
                      title: Text(
                        '3.ใช้แผ่นกันงู                              ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0),
                      ),
                      children: [
                        Text(
                          'สามารถซื้อแผ่นกันงูตามเว็บไซต์ หรือซุปเปอร์มาเก็ต แผ่นกันงูมักจะใช้ป้องกันงู หรือสัตว์เลื้อยคลานขึ้นไปบนเสาไฟฟ้า เมื่องูเลื้อยขึ้นไปเจอแผ่นกันงู จะเกิดความลื่นไม่สามารถไปต่อได้ และตกลงมาเอง',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16.0),
                        ),
                        Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                                'assets/images/protect/gunngu.JPG',
                                height: 180.0),
                          ),
                        ]),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: false,
                      childrenPadding: EdgeInsets.only(left: 16, right: 16),
                      title: Text(
                        '4.ตาข่าย                          ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0),
                      ),
                      children: [
                        Text(
                          'การติดตั้งตาข่ายเอาไว้รอบบริเวณที่คาดว่าจะเป็นทางเดินของงูในการเข้าสู่ตัวบ้าน ก็จะช่วยดักงูไว้ได้อีกทาง ซึ่งตาข่ายที่นำมาติดตั้งนั้น ควรเลือกที่มีตาชิด ให้งูไม่สามารถลอดผ่านได้ หรือใช้ตาข่ายดักปลาแทนก็ได้  งูก็จะติดอยู่กับตาข่าย เลื้อยเข้าบ้านไม่ได้',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16.0),
                        ),
                        Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image.asset(
                                'assets/images/protect/takai.JPG',
                                height: 180.0),
                          ),
                        ]),
                      ],
                    ),
                    ExpansionTile(
                      initiallyExpanded: false,
                      childrenPadding: EdgeInsets.only(left: 16, right: 16),
                      title: Text(
                        '5.ใช้สารไล่งู หรือยาไล่งู                              ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20.0),
                      ),
                      children: [
                        Text(
                          'มีผลิตภัณฑ์สำหรับไล่งูอยู่หลายแบบ หลายยี่ห้อ มีทั้งแบบผงและแบบน้ำแบบเป็นของเหลวก็มี สามารถซื้อมาลองใช้ดูได้เช่นกัน',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16.0),
                        ),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Image.asset('assets/images/protect/sp2.JPG',
                                height: 110.0),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Image.asset('assets/images/protect/sp1.JPG',
                                height: 120.0),
                          ),
                        ]),
                      ],
                    ),
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
