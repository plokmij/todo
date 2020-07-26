import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
                trailing: PopupMenuButton(
                  //padding: EdgeInsets.zero,
                  elevation: 2.0,
                  offset: Offset(52.0, 0),
                  tooltip: 'Settings',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      9,
                    ),
                  ),
                  itemBuilder: (BuildContext context) {
                    return [
                      buildPopupMenuItem(
                        icon: Icon(Icons.edit),
                        title: 'Change name',
                      ),
                      buildPopupMenuItem(
                        icon: Icon(
                          Icons.delete,
                        ),
                        title: 'Delete',
                      ),
                      buildPopupMenuItem(
                        icon: Icon(Icons.list),
                        title: 'Delete all completed tasks',
                      ),
                    ];
                  },
                ),
                title: EditableText(
                  controller: TextEditingController(),
                  focusNode: FocusNode(),
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                  cursorColor: Colors.blue,
                  backgroundCursorColor: Colors.black,
                ),
              ),
              ListTile(
                onTap: () {},
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

  PopupMenuItem buildPopupMenuItem({
    @required Icon icon,
    @required String title,
  }) {
    return PopupMenuItem(
      height: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            SizedBox(width: 5),
            Text(title),
          ],
        ),
      ),
    );
  }
}
