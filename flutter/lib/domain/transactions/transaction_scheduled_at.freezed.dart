// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_scheduled_at.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionAt {
  DateTime get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionAtCopyWith<TransactionAt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionAtCopyWith<$Res> {
  factory $TransactionAtCopyWith(TransactionAt value, $Res Function(TransactionAt) then) =
      _$TransactionAtCopyWithImpl<$Res, TransactionAt>;
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class _$TransactionAtCopyWithImpl<$Res, $Val extends TransactionAt> implements $TransactionAtCopyWith<$Res> {
  _$TransactionAtCopyWithImpl(this._value, this._then);

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
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionAtCopyWith<$Res> implements $TransactionAtCopyWith<$Res> {
  factory _$$_TransactionAtCopyWith(_$_TransactionAt value, $Res Function(_$_TransactionAt) then) =
      __$$_TransactionAtCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime value});
}

/// @nodoc
class __$$_TransactionAtCopyWithImpl<$Res> extends _$TransactionAtCopyWithImpl<$Res, _$_TransactionAt>
    implements _$$_TransactionAtCopyWith<$Res> {
  __$$_TransactionAtCopyWithImpl(_$_TransactionAt _value, $Res Function(_$_TransactionAt) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TransactionAt(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TransactionAt extends _TransactionAt {
  const _$_TransactionAt(this.value) : super._();

  @override
  final DateTime value;

  @override
  String toString() {
    return 'TransactionAt(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionAt &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionAtCopyWith<_$_TransactionAt> get copyWith =>
      __$$_TransactionAtCopyWithImpl<_$_TransactionAt>(this, _$identity);
}

abstract class _TransactionAt extends TransactionAt {
  const factory _TransactionAt(final DateTime value) = _$_TransactionAt;
  const _TransactionAt._() : super._();

  @override
  DateTime get value;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionAtCopyWith<_$_TransactionAt> get copyWith => throw _privateConstructorUsedError;
}
