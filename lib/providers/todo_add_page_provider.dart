import '../api/todo_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../view/todo_list_page.dart';

part 'todo_add_page_provider.freezed.dart';

@freezed
class TodoAddPageState with _$TodoAddPageState {
  const TodoAddPageState._();
  const factory TodoAddPageState({
    String? title,
    DateTime? date,
    int? category,
    String? memo,
  }) = _TodoAddPageState;
}

class TodoAddPageNotifier extends StateNotifier<TodoAddPageState> {

  final todoApi = TodoApi();
  final Ref ref;
  
  TodoAddPageNotifier(this.ref) : super(const TodoAddPageState());

  Future<void> add() async {
    await todoApi.addTodos(
      state.title ?? '',
      state.date ?? DateTime.now(),
      state.category ?? 0,
      state.memo ?? ''
    );
    final topListPageNotifier = ref.read(todoListPageProvider.notifier);
    await topListPageNotifier.initState();
  }

  void setTitle(String value) {
    state = state.copyWith(title: value);
  }

  void setDate(DateTime value) {
    state = state.copyWith(date: value);
  }

  void setCategory(int value) {
    state = state.copyWith(category: value);
  }

  void setMemo(String value) {
    state = state.copyWith(memo: value);
  }
}