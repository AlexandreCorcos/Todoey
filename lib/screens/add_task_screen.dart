import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },

              //   textAlign: TextAlign.center,
              //   decoration: InputDecoration(
              //     hintText: '',
              //     hintStyle: TextStyle(
              //       color: Colors.lightBlueAccent,
              //     ),
              //     contentPadding:
              //         EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide:
              //           BorderSide(color: Colors.lightBlueAccent, width: 1.0),
              //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide:
              //           BorderSide(color: Colors.lightBlueAccent, width: 2.0),
              //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //     ),
              //   ),
            ),
            SizedBox(height: 20.0),
            FlatButton(
              child: Text('Add'),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
