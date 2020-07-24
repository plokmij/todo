import 'package:flutter/material.dart';
import 'package:todo/widgets/add_new_list_button.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key key,
    @required this.tasks,
  }) : super(key: key);

  final List<String> tasks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        margin: EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                title: Align(
                  child: Text(
                    'Add a task',
                    style: TextStyle(
                      color: Color(0xff5f6368),
                    ),
                  ),
                  alignment: Alignment(-1.3, 0),
                ),
              ),
              ...tasks
                  .map<Widget>(
                    (e) => buildTask(
                      e,
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTask(String task) {
    return ListTile(
      leading: Icon(Icons.radio_button_unchecked),
      title: Align(
        child: Text(task),
        alignment: Alignment(-1.2, 0),
      ),
    );
  }
}
