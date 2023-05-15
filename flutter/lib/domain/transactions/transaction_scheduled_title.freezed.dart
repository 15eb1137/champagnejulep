// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_scheduled_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionTitle {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionTitleCopyWith<TransactionTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionTitleCopyWith<$Res> {
  factory $TransactionTitleCopyWith(
          TransactionTitle value, $Res Function(TransactionTitle) then) =
      _$TransactionTitleCopyWithImpl<$Res, TransactionTitle>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TransactionTitleCopyWithImpl<$Res, $Val extends TransactionTitle>
    implements $TransactionTitleCopyWith<$Res> {
  _$TransactionTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionTitleCopyWith<$Res>
    implements $TransactionTitleCopyWith<$Res> {
  factory _$$_TransactionTitleCopyWith(
          _$_TransactionTitle value, $Res Function(_$_TransactionTitle) then) =
      __$$_TransactionTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_TransactionTitleCopyWithImpl<$Res>
    extends _$TransactionTitleCopyWithImpl<$Res, _$_TransactionTitle>
    implements _$$_TransactionTitleCopyWith<$Res> {
  __$$_TransactionTitleCopyWithImpl(
      _$_TransactionTitle _value, $Res Function(_$_TransactionTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TransactionTitle(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TransactionTitle implements _TransactionTitle {
  const _$_TransactionTitle(this.value) : assert(value.length < 20);

  @override
  final String value;

  @override
  String toString() {
    return 'TransactionTitle(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionTitle &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionTitleCopyWith<_$_TransactionTitle> get copyWith =>
      __$$_TransactionTitleCopyWithImpl<_$_TransactionTitle>(this, _$identity);
}

abstract class _TransactionTitle implements TransactionTitle {
  const factory _TransactionTitle(final String value) = _$_TransactionTitle;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionTitleCopyWith<_$_TransactionTitle> get copyWith =>
      throw _privateConstructorUsedError;
}
