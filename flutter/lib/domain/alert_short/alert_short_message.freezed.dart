// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_short_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlertShortMessage {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlertShortMessageCopyWith<AlertShortMessage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertShortMessageCopyWith<$Res> {
  factory $AlertShortMessageCopyWith(AlertShortMessage value, $Res Function(AlertShortMessage) then) =
      _$AlertShortMessageCopyWithImpl<$Res, AlertShortMessage>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AlertShortMessageCopyWithImpl<$Res, $Val extends AlertShortMessage>
    implements $AlertShortMessageCopyWith<$Res> {
  _$AlertShortMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$_AlertShortMessageCopyWith<$Res> implements $AlertShortMessageCopyWith<$Res> {
  factory _$$_AlertShortMessageCopyWith(_$_AlertShortMessage value, $Res Function(_$_AlertShortMessage) then) =
      __$$_AlertShortMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AlertShortMessageCopyWithImpl<$Res> extends _$AlertShortMessageCopyWithImpl<$Res, _$_AlertShortMessage>
    implements _$$_AlertShortMessageCopyWith<$Res> {
  __$$_AlertShortMessageCopyWithImpl(_$_AlertShortMessage _value, $Res Function(_$_AlertShortMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AlertShortMessage(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AlertShortMessage implements _AlertShortMessage {
  const _$_AlertShortMessage(this.value) : assert(value.length < 120);

  @override
  final String value;

  @override
  String toString() {
    return 'AlertShortMessage(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertShortMessage &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertShortMessageCopyWith<_$_AlertShortMessage> get copyWith =>
      __$$_AlertShortMessageCopyWithImpl<_$_AlertShortMessage>(this, _$identity);
}

abstract class _AlertShortMessage implements AlertShortMessage {
  const factory _AlertShortMessage(final String value) = _$_AlertShortMessage;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AlertShortMessageCopyWith<_$_AlertShortMessage> get copyWith => throw _privateConstructorUsedError;
}
