import 'package:flutter/material.dart';

class AddNewListItemButton extends StatelessWidget {
  const AddNewListItemButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.all(
          Radius.circular(
            6,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Center(
        child: Text(
          '+ Add new list',
          style: TextStyle(color: Color.fromRGBO(115, 121, 125, 1)),
        ),
      ),
    );
  }
}
