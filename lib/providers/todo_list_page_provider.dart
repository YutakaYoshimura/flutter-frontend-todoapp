import '../api/todo_api.dart';
import '../model/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_page_provider.freezed.dart';

@freezed
class TodoListPageState with _$TodoListPageState {
  const TodoListPageState._();
  const factory TodoListPageState({
    @Default('') String title,
    @Default(0) int category,
    @Default(0) int selectId,
    @Default([]) List<TodoModel> todoList,
    @Default(false) bool errorFlg,
  }) = _TodoListPageState;
}


class TodoListPageNotifier extends StateNotifier<TodoListPageState> {

  final todoApi = TodoApi();

  TodoListPageNotifier() : super(const TodoListPageState()) {
    initState();
  }

  Future<void> initState() async {
    final todos = await todoApi.getAllTodos(state.category);
    state = state.copyWith(todoList: todos);
  }

  Future<void> add(title, date, category, memo) async {
    await todoApi.addTodos(title, date, category, memo);
    initState();
    state = state.copyWith(todoList: state.todoList);
  }

  Future<void> remove(int id) async {
    await todoApi.delTodos(id);
    initState();
    state = state.copyWith(todoList: state.todoList);
  }

  void setCategory(int value) {
    state = state.copyWith(category: value);
  }

  void setSelectId(int value) {
    state = state.copyWith(selectId: value);
  }

  void setErrorFlg(bool value) {
    state = state.copyWith(errorFlg: value);
  }
}