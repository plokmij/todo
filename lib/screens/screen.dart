import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/widgets/todo_card.dart';

class Screen extends StatelessWidget {
  const Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        centerTitle: true,
        title: SizedBox(
          width: 600,
          child: CupertinoTextField(
            placeholder: 'Search',
            prefix: Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Icon(Icons.search),
            ),
            suffix: Padding(
              padding: EdgeInsets.only(
                right: 10,
              ),
              child: Icon(Icons.close),
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  6,
                ),
              ),
              color: Color(0xffF1F3F4),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffF1F3F4),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start  ,
        children: [
          TodoCard(
            tasks: [
              'eat',
              'sleep',
              'sleep',
              'eat',
            ],
          ),
          TodoCard(
            tasks: [
              'code',
              'sleep',
              'eat',
              'code',
            ],
          ),
          TodoCard(
            tasks: [
              'learn',
              'code',
              'eat',
              'code',
            ],
          ),
          TodoCard(
            tasks: [
              'code',
              'sleep',
              'code',
              'eat',
              'sleep',
              'bad code',
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text('Main Board'),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Board'),
            ),
          ],
        ),
      ),
    );
  }
}
