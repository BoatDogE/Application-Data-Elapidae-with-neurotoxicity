import 'package:project/model/datasnake.dart';
import 'package:project/model/modelsnake.dart';

import 'package:project/snake/Snake1.dart';
import 'package:project/snake/Snake10.dart';
import 'package:project/snake/Snake11.dart';
import 'package:project/snake/Snake12.dart';
import 'package:project/snake/Snake2.dart';
import 'package:project/snake/Snake3.dart';
import 'package:project/snake/Snake4.dart';
import 'package:project/snake/Snake5.dart';
import 'package:project/snake/Snake6.dart';
import 'package:project/snake/Snake7.dart';
import 'package:project/snake/Snake8.dart';
import 'package:project/snake/Snake9.dart';
import 'package:project/widget/search_widget.dart';

import 'package:flutter/material.dart';

class FilterLocalListPage extends StatefulWidget {
  @override
  FilterLocalListPageState createState() => FilterLocalListPageState();
}

class FilterLocalListPageState extends State<FilterLocalListPage> {
  late List<Snake> snakes;
  String query = '';

  @override
  void initState() {
    super.initState();

    snakes = allSnakes;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text('งูพิษต่อระบบประสาท',
              style: TextStyle(fontSize: 30, color: Colors.black)),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            buildSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: snakes.length,
                itemBuilder: (context, index) {
                  final book = snakes[index];

                  return buildBook(book);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'ชื่อสามัญ , ชื่อภาษาอังกฤษ ',
        onChanged: searchSnake,
      );

  Widget buildBook(Snake snake) => Container(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Card(
          elevation: 3,
          child: ListTile(
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            leading: Image.asset(
              snake.images,
              fit: BoxFit.cover,
              width: 95,
              height: 200,
            ),
            title: Text(snake.title),
            subtitle: Text(snake.author),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    if (snake.id == 1) {
                      return Snake1();
                    } else if (snake.id == 2) {
                      return Snake2();
                    } else if (snake.id == 3) {
                      return Snake3();
                    } else if (snake.id == 4) {
                      return Snake4();
                    } else if (snake.id == 5) {
                      return Snake5();
                    } else if (snake.id == 6) {
                      return Snake6();
                    } else if (snake.id == 7) {
                      return Snake7();
                    } else if (snake.id == 8) {
                      return Snake8();
                    } else if (snake.id == 9) {
                      return Snake9();
                    } else if (snake.id == 10) {
                      return Snake10();
                    } else if (snake.id == 11) {
                      return Snake11();
                    } else if (snake.id == 12) {
                      return Snake12();
                    }
                    return Text("ไม่พบข้อมูล");
                  },
                ),
              );
            },
          ),
        ),
      );

  void searchSnake(String query) {
    final snakes = allSnakes.where((snake) {
      final titleLower = snake.title.toLowerCase();
      final authorLower = snake.author.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.snakes = snakes;
    });
  }
}
