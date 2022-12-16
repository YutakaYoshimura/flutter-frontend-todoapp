import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../component/dialog.dart';
import '../component/side_menu.dart';
import '../providers/todo_list_page_provider.dart';
import '../providers/todo_edit_page_provider.dart';

final todoListPageProvider = StateNotifierProvider<TodoListPageNotifier, TodoListPageState>((ref) {
  return TodoListPageNotifier();
});

final todoEditPageProvider = StateNotifierProvider<TodoEditPageNotifier, TodoEditPageState>((ref) {
  return TodoEditPageNotifier(ref);
});

class TodoListPage extends ConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final category = ref.watch(todoListPageProvider.select((value) => value.category));
    final todoListPageNotifier = ref.read(todoListPageProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('リスト一覧')),
      drawer: const Drawer(child: SideMenu()),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            child: DropdownButtonFormField(
              decoration: const InputDecoration(labelText: 'カテゴリー検索'),
              dropdownColor: Colors.white,
              value: category,
              items: const [
                DropdownMenuItem(                  
                  value: 0,
                  child: Text('全て'),
                ),
                DropdownMenuItem(                  
                  value: 1,
                  child: Text('仕事'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('家事'),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text('遊び'),
                ),
              ],
              onChanged: (int? value) {
                todoListPageNotifier.setCategory(value ?? 0);
                todoListPageNotifier.initState();
              },
            ),
          ),
          Expanded(
            child: Container(
              child: todoList(ref),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.go('/todo_list/todo_add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget todoList(WidgetRef ref) {
    final todoData = ref.watch(todoListPageProvider.select((value) => value.todoList));
    final todoListPageNotifier = ref.read(todoListPageProvider.notifier);

    if (todoData.isEmpty) {
      return const Center(
        child: Text("NO DATA"),
      );
    }
    return ListView.builder(
      itemCount: todoData.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(todoData[index].title),
            subtitle: Text('${todoData[index].date.year}/${todoData[index].date.month}/${todoData[index].date.day}'),
            onTap: () {
              todoListPageNotifier.setSelectId(todoData[index].id);
              context.go('/todo_list/todo_edit');
            },
            trailing: Wrap(
              spacing: 5,
              children: [
                ElevatedButton(
                  child: const Text("完了", style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    bool res = await showDialog(
                      context: context,
                      builder: (_) {
                        return const AlertDialogWidget(title: '完了にしますか？');
                      }
                    );
                    if (res) {
                      // TODO:完了機能
                    }
                  },
                ),
                ElevatedButton(
                  child: const Text("削除", style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    bool res = await showDialog(
                      context: context,
                      builder: (_) {
                        return const AlertDialogWidget(title: '削除しますか？');
                      }
                    );
                    if (res) {
                      await todoListPageNotifier.remove(todoData[index].id);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}