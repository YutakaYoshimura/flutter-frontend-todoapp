import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/todo_edit_page_provider.dart';
import '../component/date_picker.dart';
import '../view/error_page.dart';
import '../validator/required_validator.dart';
import '../validator/max_length_validator.dart';

final todoEditPageProvider = StateNotifierProvider.autoDispose<TodoEditPageNotifier, TodoEditPageState>((ref) {
  return TodoEditPageNotifier(ref);
});

class TodoEditPage extends ConsumerWidget {
  TodoEditPage({Key? key,}) : super(key: key);
  final TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final todoEditPageNotifier = ref.read(todoEditPageProvider.notifier);
    final todoEditPageState = ref.watch(todoEditPageProvider);
    final formKey = GlobalKey<FormState>();
    
    TextEditingController title = TextEditingController(text: todoEditPageState.title);
    DateTime date = todoEditPageState.date ?? DateTime.now();
    int category = todoEditPageState.category;
    TextEditingController memo = TextEditingController(text: todoEditPageState.memo);

    if (todoEditPageState.errorFlg) {
      return ErrorPage(errorMsg: todoEditPageState.errorMsg);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト更新'),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: title,
                    decoration: const InputDecoration(
                      labelText: 'タイトル',
                      labelStyle: const TextStyle(color: Colors.black26),
                      hintText: '入力してください',
                    ),
                    validator: (value) {
                      if (! RequiredValidator().variable(value)) {
                        return RequiredValidator().getMessage();
                      }
                      if (! MaxLengthValidator(50).variable(value)) {
                        return MaxLengthValidator(50).getMessage();
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: TextEditingController(text: '${date.year}/${date.month}/${date.day}'),
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: '日付',
                      hintText: '入力してください',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.date_range),
                        onPressed: () async {
                          DateTime initDate = DateTime.now();
                          final newDate = await showDatePicker(
                            context: context,
                            initialDate: initDate,
                            firstDate: DateTime(DateTime.now().year - 2),
                            lastDate: DateTime(DateTime.now().year + 2)
                          );
                          if (newDate == null) return;
                          todoEditPageNotifier.setDate(newDate);
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text('${date.year}/${date.month}/${date.day}',
                        style: TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        icon: const Icon(Icons.date_range),
                        onPressed: () async {
                          DateTime initDate = DateTime.now();
                          final newDate = await showDatePicker(
                            context: context,
                            initialDate: initDate,
                            firstDate: DateTime(DateTime.now().year - 2),
                            lastDate: DateTime(DateTime.now().year + 2)
                          );
                          if (newDate == null) return;
                          todoEditPageNotifier.setDate(newDate);
                        }
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.blue),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(labelText: 'カテゴリー'),
                    //dropdownColor: Colors.white,
                    items: const [
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
                      category = value ?? 1;
                    },
                    value: todoEditPageState.category,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: memo,
                    maxLines: 5,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'メモ',
                      hintText: '入力してください',
                      //icon: Icon(Icons.info),
                    ),
                    validator: (value) {
                      if (! RequiredValidator().variable(value)) {
                        return RequiredValidator().getMessage();
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  // 横幅いっぱいに広げる
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        todoEditPageNotifier.setTitle(title.text);
                        todoEditPageNotifier.setMemo(memo.text);
                        todoEditPageNotifier.setCategory(category);
                        todoEditPageNotifier.setDate(date);
                        todoEditPageNotifier.edit();
                        context.pop();
                      }
                    },
                    child: const Text('リスト更新', style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('キャンセル'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}