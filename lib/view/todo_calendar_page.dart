import 'package:flutter/material.dart';
import 'todo_add_page.dart';
import '../model/todo_model.dart';
import '../component/dialog.dart';
import '../component/side_menu.dart';

class TodoCalendarPage extends StatefulWidget {
  @override
  _TodoCalendarPageState createState() => _TodoCalendarPageState();
}

class _TodoCalendarPageState extends State<TodoCalendarPage> {
  // final TodoViewModel todoViewModel = TodoViewModel();

  List<TodoModel> todos = [];
  Future getTodos() async {
    // todos = (await todoViewModel.getAllTodos(_category))!;
  }
  List<String> todoCalendar = [];
  String? _category = '0';

  //var _city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('カレンダー')),
      drawer: const Drawer(child: SideMenu()),
      body: FutureBuilder(
        future: getTodos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text("LOADING"),
            );
          } else {
            if (todos.isEmpty) {
              return const Center(
                child: Text("NO DATA"),
              );
            }
            return ListView.builder(
            itemCount: todos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    trailing: Wrap (
                      spacing: 5,
                      children: [
                        ElevatedButton (
                          onPressed: () async {
                            bool res = await showDialog(
                                context: context,
                                builder: (_) {
                                  return const AlertDialogWidget();
                                }
                            );
                            if (res) {
                              // TODO:完了機能
                            }
                          },
                          child: const Text("完了", style: TextStyle(color: Colors.white)),
                        ),
                        ElevatedButton (
                          onPressed: () async {
                            bool res = await showDialog(
                                context: context,
                                builder: (_) {
                                  return const AlertDialogWidget();
                                }
                            );
                            if (res) {
                              // await todoViewModel.delTodos(todos[index].id);
                            }
                          },
                          child: const Text("削除", style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    title: Text(todos[index].title),
                  ),
                );
              },
            );
          }
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // リスト追加画面から渡される値を受け取る
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return TodoAddPage();
            }),
          );
          if (newListText != null) {
            // setState(() {
            //   todoCalendar.add(newListText);
            // });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}