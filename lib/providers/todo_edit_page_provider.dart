import 'package:fllutter/model/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../api/todo_api.dart';
import '../view/todo_list_page.dart';

part 'todo_edit_page_provider.freezed.dart';

@freezed
class TodoEditPageState with _$TodoEditPageState {
  const TodoEditPageState._();
  const factory TodoEditPageState({
    @Default(0) int id,
    @Default('') String title,
    DateTime? date,
    @Default(1) int category,
    @Default('') String memo,
    @Default(false) bool errorFlg,
    @Default('') String errorState,
    @Default('') String errorMsg,
  }) = _TodoEditPageState;
}

class TodoEditPageNotifier extends StateNotifier<TodoEditPageState> {

  final todoApi = TodoApi();
  final Ref ref;

  TodoEditPageNotifier(this.ref) : super(const TodoEditPageState()) {
    initState();
  }

  Future initState() async {
    final todoListPage = ref.read(todoListPageProvider);
    setId(todoListPage.selectId);
    if (state.id != 0) {
      try {
        TodoModel data = await todoApi.getTodos(state.id);
        setId(data.id);
        setTitle(data.title);
        setDate(data.date);
        setCategory(data.category);
        setMemo(data.memo);
      } on Exception catch (e) {
        setErrorFlg(true);
        setErrorState(e.toString());
        //setErrorMsg('');
      }
    }
  }

  Future<void> edit() async {
    await todoApi.editTodos(
      state.id,
      state.title,
      state.date ?? DateTime.now(),
      state.category,
      state.memo
    );
    final topListPageNotifier = ref.read(todoListPageProvider.notifier);
    await topListPageNotifier.initState();
  }

  void setId(int value) {
    state = state.copyWith(id: value);
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

  void setErrorFlg(bool value) {
    state = state.copyWith(errorFlg: value);
  }

  void setErrorState(String value) {
    state = state.copyWith(errorState: value);
  }

  void setErrorMsg(String value) {
    state = state.copyWith(errorMsg: value);
  }
}