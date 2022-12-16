// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_page_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListPageState {
  String get title => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  int get selectId => throw _privateConstructorUsedError;
  List<TodoModel> get todoList => throw _privateConstructorUsedError;
  bool get errorFlg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListPageStateCopyWith<TodoListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListPageStateCopyWith<$Res> {
  factory $TodoListPageStateCopyWith(
          TodoListPageState value, $Res Function(TodoListPageState) then) =
      _$TodoListPageStateCopyWithImpl<$Res, TodoListPageState>;
  @useResult
  $Res call(
      {String title,
      int category,
      int selectId,
      List<TodoModel> todoList,
      bool errorFlg});
}

/// @nodoc
class _$TodoListPageStateCopyWithImpl<$Res, $Val extends TodoListPageState>
    implements $TodoListPageStateCopyWith<$Res> {
  _$TodoListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? category = null,
    Object? selectId = null,
    Object? todoList = null,
    Object? errorFlg = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      selectId: null == selectId
          ? _value.selectId
          : selectId // ignore: cast_nullable_to_non_nullable
              as int,
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      errorFlg: null == errorFlg
          ? _value.errorFlg
          : errorFlg // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoListPageStateCopyWith<$Res>
    implements $TodoListPageStateCopyWith<$Res> {
  factory _$$_TodoListPageStateCopyWith(_$_TodoListPageState value,
          $Res Function(_$_TodoListPageState) then) =
      __$$_TodoListPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int category,
      int selectId,
      List<TodoModel> todoList,
      bool errorFlg});
}

/// @nodoc
class __$$_TodoListPageStateCopyWithImpl<$Res>
    extends _$TodoListPageStateCopyWithImpl<$Res, _$_TodoListPageState>
    implements _$$_TodoListPageStateCopyWith<$Res> {
  __$$_TodoListPageStateCopyWithImpl(
      _$_TodoListPageState _value, $Res Function(_$_TodoListPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? category = null,
    Object? selectId = null,
    Object? todoList = null,
    Object? errorFlg = null,
  }) {
    return _then(_$_TodoListPageState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      selectId: null == selectId
          ? _value.selectId
          : selectId // ignore: cast_nullable_to_non_nullable
              as int,
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      errorFlg: null == errorFlg
          ? _value.errorFlg
          : errorFlg // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoListPageState extends _TodoListPageState {
  const _$_TodoListPageState(
      {this.title = '',
      this.category = 0,
      this.selectId = 0,
      final List<TodoModel> todoList = const [],
      this.errorFlg = false})
      : _todoList = todoList,
        super._();

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int category;
  @override
  @JsonKey()
  final int selectId;
  final List<TodoModel> _todoList;
  @override
  @JsonKey()
  List<TodoModel> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  @JsonKey()
  final bool errorFlg;

  @override
  String toString() {
    return 'TodoListPageState(title: $title, category: $category, selectId: $selectId, todoList: $todoList, errorFlg: $errorFlg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoListPageState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.selectId, selectId) ||
                other.selectId == selectId) &&
            const DeepCollectionEquality().equals(other._todoList, _todoList) &&
            (identical(other.errorFlg, errorFlg) ||
                other.errorFlg == errorFlg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, category, selectId,
      const DeepCollectionEquality().hash(_todoList), errorFlg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoListPageStateCopyWith<_$_TodoListPageState> get copyWith =>
      __$$_TodoListPageStateCopyWithImpl<_$_TodoListPageState>(
          this, _$identity);
}

abstract class _TodoListPageState extends TodoListPageState {
  const factory _TodoListPageState(
      {final String title,
      final int category,
      final int selectId,
      final List<TodoModel> todoList,
      final bool errorFlg}) = _$_TodoListPageState;
  const _TodoListPageState._() : super._();

  @override
  String get title;
  @override
  int get category;
  @override
  int get selectId;
  @override
  List<TodoModel> get todoList;
  @override
  bool get errorFlg;
  @override
  @JsonKey(ignore: true)
  _$$_TodoListPageStateCopyWith<_$_TodoListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
