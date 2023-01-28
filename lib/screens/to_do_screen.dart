import 'package:flutter/material.dart';
import 'package:to_do/style.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final TextEditingController listText = TextEditingController();
  List toDoList = [];
  String Item = '';

  myInputOnChange(value) {
    Item = value;
    setState(() {});
  }

  addItem() {
    toDoList.add({"item": Item});
    setState(() {});
  }

  removeItem(index) {
    toDoList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("To Do"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 70,
                        child: TextField(
                          controller: listText,
                          onChanged: (value) {
                            myInputOnChange(value);
                          },
                          decoration: AppInputDecroation("Enter text"),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            addItem();
                            listText.clear();
                          },
                          child: const Text("Add"),
                          style: AppButtonStyle(),
                        )),
                  ],
                )),
            Expanded(
                flex: 80,
                child: ListView.builder(
                    itemCount: toDoList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 80,
                                  child: Text(
                                    toDoList[index]['item'].toString(),
                                    style: TextStyle(fontSize: 17),
                                  )),
                              Expanded(
                                  flex: 20,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      removeItem(index);
                                    },
                                    child: Icon(Icons.delete),
                                  )),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
