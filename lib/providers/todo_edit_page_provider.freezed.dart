// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_edit_page_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEditPageState {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  bool get errorFlg => throw _privateConstructorUsedError;
  String get errorState => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEditPageStateCopyWith<TodoEditPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEditPageStateCopyWith<$Res> {
  factory $TodoEditPageStateCopyWith(
          TodoEditPageState value, $Res Function(TodoEditPageState) then) =
      _$TodoEditPageStateCopyWithImpl<$Res, TodoEditPageState>;
  @useResult
  $Res call(
      {int id,
      String title,
      DateTime? date,
      int category,
      String memo,
      bool errorFlg,
      String errorState,
      String errorMsg});
}

/// @nodoc
class _$TodoEditPageStateCopyWithImpl<$Res, $Val extends TodoEditPageState>
    implements $TodoEditPageStateCopyWith<$Res> {
  _$TodoEditPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = freezed,
    Object? category = null,
    Object? memo = null,
    Object? errorFlg = null,
    Object? errorState = null,
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      errorFlg: null == errorFlg
          ? _value.errorFlg
          : errorFlg // ignore: cast_nullable_to_non_nullable
              as bool,
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoEditPageStateCopyWith<$Res>
    implements $TodoEditPageStateCopyWith<$Res> {
  factory _$$_TodoEditPageStateCopyWith(_$_TodoEditPageState value,
          $Res Function(_$_TodoEditPageState) then) =
      __$$_TodoEditPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      DateTime? date,
      int category,
      String memo,
      bool errorFlg,
      String errorState,
      String errorMsg});
}

/// @nodoc
class __$$_TodoEditPageStateCopyWithImpl<$Res>
    extends _$TodoEditPageStateCopyWithImpl<$Res, _$_TodoEditPageState>
    implements _$$_TodoEditPageStateCopyWith<$Res> {
  __$$_TodoEditPageStateCopyWithImpl(
      _$_TodoEditPageState _value, $Res Function(_$_TodoEditPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = freezed,
    Object? category = null,
    Object? memo = null,
    Object? errorFlg = null,
    Object? errorState = null,
    Object? errorMsg = null,
  }) {
    return _then(_$_TodoEditPageState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      errorFlg: null == errorFlg
          ? _value.errorFlg
          : errorFlg // ignore: cast_nullable_to_non_nullable
              as bool,
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TodoEditPageState extends _TodoEditPageState {
  const _$_TodoEditPageState(
      {this.id = 0,
      this.title = '',
      this.date,
      this.category = 1,
      this.memo = '',
      this.errorFlg = false,
      this.errorState = '',
      this.errorMsg = ''})
      : super._();

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final int category;
  @override
  @JsonKey()
  final String memo;
  @override
  @JsonKey()
  final bool errorFlg;
  @override
  @JsonKey()
  final String errorState;
  @override
  @JsonKey()
  final String errorMsg;

  @override
  String toString() {
    return 'TodoEditPageState(id: $id, title: $title, date: $date, category: $category, memo: $memo, errorFlg: $errorFlg, errorState: $errorState, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoEditPageState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.errorFlg, errorFlg) ||
                other.errorFlg == errorFlg) &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, category, memo,
      errorFlg, errorState, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoEditPageStateCopyWith<_$_TodoEditPageState> get copyWith =>
      __$$_TodoEditPageStateCopyWithImpl<_$_TodoEditPageState>(
          this, _$identity);
}

abstract class _TodoEditPageState extends TodoEditPageState {
  const factory _TodoEditPageState(
      {final int id,
      final String title,
      final DateTime? date,
      final int category,
      final String memo,
      final bool errorFlg,
      final String errorState,
      final String errorMsg}) = _$_TodoEditPageState;
  const _TodoEditPageState._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  DateTime? get date;
  @override
  int get category;
  @override
  String get memo;
  @override
  bool get errorFlg;
  @override
  String get errorState;
  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$_TodoEditPageStateCopyWith<_$_TodoEditPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
