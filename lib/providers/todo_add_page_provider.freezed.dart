// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_add_page_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoAddPageState {
  String? get title => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoAddPageStateCopyWith<TodoAddPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoAddPageStateCopyWith<$Res> {
  factory $TodoAddPageStateCopyWith(
          TodoAddPageState value, $Res Function(TodoAddPageState) then) =
      _$TodoAddPageStateCopyWithImpl<$Res, TodoAddPageState>;
  @useResult
  $Res call({String? title, DateTime? date, int? category, String? memo});
}

/// @nodoc
class _$TodoAddPageStateCopyWithImpl<$Res, $Val extends TodoAddPageState>
    implements $TodoAddPageStateCopyWith<$Res> {
  _$TodoAddPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? category = freezed,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoAddPageStateCopyWith<$Res>
    implements $TodoAddPageStateCopyWith<$Res> {
  factory _$$_TodoAddPageStateCopyWith(
          _$_TodoAddPageState value, $Res Function(_$_TodoAddPageState) then) =
      __$$_TodoAddPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, DateTime? date, int? category, String? memo});
}

/// @nodoc
class __$$_TodoAddPageStateCopyWithImpl<$Res>
    extends _$TodoAddPageStateCopyWithImpl<$Res, _$_TodoAddPageState>
    implements _$$_TodoAddPageStateCopyWith<$Res> {
  __$$_TodoAddPageStateCopyWithImpl(
      _$_TodoAddPageState _value, $Res Function(_$_TodoAddPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? category = freezed,
    Object? memo = freezed,
  }) {
    return _then(_$_TodoAddPageState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TodoAddPageState extends _TodoAddPageState {
  const _$_TodoAddPageState({this.title, this.date, this.category, this.memo})
      : super._();

  @override
  final String? title;
  @override
  final DateTime? date;
  @override
  final int? category;
  @override
  final String? memo;

  @override
  String toString() {
    return 'TodoAddPageState(title: $title, date: $date, category: $category, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoAddPageState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, date, category, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoAddPageStateCopyWith<_$_TodoAddPageState> get copyWith =>
      __$$_TodoAddPageStateCopyWithImpl<_$_TodoAddPageState>(this, _$identity);
}

abstract class _TodoAddPageState extends TodoAddPageState {
  const factory _TodoAddPageState(
      {final String? title,
      final DateTime? date,
      final int? category,
      final String? memo}) = _$_TodoAddPageState;
  const _TodoAddPageState._() : super._();

  @override
  String? get title;
  @override
  DateTime? get date;
  @override
  int? get category;
  @override
  String? get memo;
  @override
  @JsonKey(ignore: true)
  _$$_TodoAddPageStateCopyWith<_$_TodoAddPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
