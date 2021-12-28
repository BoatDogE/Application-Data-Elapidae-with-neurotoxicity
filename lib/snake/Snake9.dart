import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Snake9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('งูสามเหลี่ยม'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 10,
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Carousel(
                  autoplay: true,
                  autoplayDuration: Duration(seconds: 5),
                  dotSize: 5,
                  dotSpacing: 15.0,
                  indicatorBgPadding: 5,
                  dotBgColor: Colors.transparent,
                  dotVerticalPadding: 15,
                  images: [
                    InkWell(
                      onTap: () {
                        print('hi');
                      },
                      child: Image.asset(
                        'assets/images/tri1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/tri2.jpg',
                      width: 300,
                    ),
                    Image.asset(
                      'assets/images/tri3.jpg',
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  'ลักษณะและจุดเด่น',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      height: 2, fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: 160,
                width: 850,
                margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 10, right: 5, top: 1),
                child: Container(
                  child: Card(
                      elevation: 4,
                      color: Colors.orange[200],
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, top: 10, bottom: 10),
                        child: new Text(
                          '  งูสามเหลี่ยมมีหัวกลม ลำตัวเรียวยาว ปลายหางมักทู่ บางตัวหัวแบนเล็กน้อย'
                          'ลำตัวเป็นสันสามเหลี่ยมชัดเจน เลื้อยช้าแต่ว่ายน้ำได้เร็ว เป็นงูที่มีความว่องไวปราดเปรียวในน้ำ สีของ'
                          'ลำตัวเป็นปล้องดำสลับเหลืองทั้งตัว เวลากัดไม่มีการแผ่แม่เบี้ยเหมือนงูเห่า หรืองูจงอาง',
                          style: TextStyle(fontSize: 18.0, height: 1.3),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  'พื้นที่อาศัย',
                  style: TextStyle(
                      height: 2, fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: 110,
                width: 850,
                margin: EdgeInsets.only(left: 2, right: 4),
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  child: Card(
                    elevation: 4,
                    color: Colors.orange[200],
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: new Text(
                        ' ชอบขดนอนตามโคนกอไผ่ ละเมาะไม้พงหญ้าริมน พบทั่วไปตามที่ราบลุ่ม ป่าชายเลน ทุ่งนา และอาจพบได้ที่ระดับความสูงถึง 2,300 เมตร',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  'พิษ',
                  style: TextStyle(
                      height: 2, fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: 110,
                width: 850,
                margin: EdgeInsets.only(left: 2, right: 4),
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  child: Card(
                      elevation: 4,
                      color: Colors.orange[200],
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, top: 10, bottom: 10),
                        child: Text(
                          '  มีพิษทำลายระบบประสาทและโลหิตรวมกัน เมื่อถูกกัดจะมีอาการชักกระตุก ปวดช่อง'
                          'ท้องมีเลือดออกเป็นจุด ๆ ใต้ผิวหนัง มีเลือดออกตามไรฟันและไอเป็นเลือด',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              Container(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
