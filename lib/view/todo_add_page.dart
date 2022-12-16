import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/todo_add_page_provider.dart';
import '../validator/required_validator.dart';

final todoAddPageProvider = StateNotifierProvider.autoDispose<TodoAddPageNotifier, TodoAddPageState>((ref) {
  return TodoAddPageNotifier(ref);
});

class TodoAddPage extends ConsumerWidget {
  TodoAddPage({Key? key}) : super(key: key);
  final String _title = '';
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final todoAddPageState = ref.watch(todoAddPageProvider);
    final todoAddPageNotifier = ref.read(todoAddPageProvider.notifier);
    final formKey = GlobalKey<FormState>();

    

    TextEditingController title = TextEditingController(text: todoAddPageState.title);
    DateTime date = todoAddPageState.date ?? DateTime.now();
    int category = todoAddPageState.category ?? 1;
    TextEditingController memo = TextEditingController(text: todoAddPageState.memo);


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('リスト追加'),
      ),
      body: Container(
        padding: const EdgeInsets.all(64),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_title, style: const TextStyle(color: Colors.blue)),
              const SizedBox(height: 8),
              TextFormField(
                controller: title,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'タイトル',
                  hintText: '入力してください',
                  icon: Icon(Icons.title),
                ),
                validator: (value) {
                  if (! RequiredValidator().variable(value)) {
                    RequiredValidator().getMessage();
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextField(
                controller: TextEditingController(text: '${date.year}/${date.month}/${date.day}'),
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
                      date = newDate;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 8),
              DropdownButton(
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
                value: todoAddPageState.category,
              ),
              const SizedBox(height: 8),
              TextField(
                  controller: memo,
                  decoration: const InputDecoration(
                    labelText: 'メモ',
                    hintText: '入力してください',
                    icon: Icon(Icons.info),
                  ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                // 横幅いっぱいに広げる
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      todoAddPageNotifier.setTitle(title.text);
                      todoAddPageNotifier.setDate(date);
                      todoAddPageNotifier.setCategory(category);
                      todoAddPageNotifier.setMemo(memo.text);
                      todoAddPageNotifier.add();
                      context.pop();
                    }
                  },
                  child: const Text('リスト追加', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                // 横幅いっぱいに広げる
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('キャンセル'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}