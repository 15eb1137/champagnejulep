// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlertShort {
  AccountId get accountId => throw _privateConstructorUsedError;
  AlertShortTitle get title => throw _privateConstructorUsedError;
  AlertShortMessage get message => throw _privateConstructorUsedError;
  int get threshold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlertShortCopyWith<AlertShort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertShortCopyWith<$Res> {
  factory $AlertShortCopyWith(AlertShort value, $Res Function(AlertShort) then) =
      _$AlertShortCopyWithImpl<$Res, AlertShort>;
  @useResult
  $Res call(
      {AccountId accountId,
      AlertShortTitle title,
      AlertShortMessage message,
      int threshold});

  $AccountIdCopyWith<$Res> get accountId;
  $AlertShortTitleCopyWith<$Res> get title;
  $AlertShortMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$AlertShortCopyWithImpl<$Res, $Val extends AlertShort> implements $AlertShortCopyWith<$Res> {
  _$AlertShortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? title = null,
    Object? message = null,
    Object? threshold = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as AccountId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AlertShortTitle,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AlertShortMessage,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountIdCopyWith<$Res> get accountId {
    return $AccountIdCopyWith<$Res>(_value.accountId, (value) {
      return _then(_value.copyWith(accountId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertShortTitleCopyWith<$Res> get title {
    return $AlertShortTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertShortMessageCopyWith<$Res> get message {
    return $AlertShortMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlertShortCopyWith<$Res> implements $AlertShortCopyWith<$Res> {
  factory _$$_AlertShortCopyWith(_$_AlertShort value, $Res Function(_$_AlertShort) then) =
      __$$_AlertShortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountId accountId,
      AlertShortTitle title,
      AlertShortMessage message,
      int threshold});

  @override
  $AccountIdCopyWith<$Res> get accountId;
  @override
  $AlertShortTitleCopyWith<$Res> get title;
  @override
  $AlertShortMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_AlertShortCopyWithImpl<$Res> extends _$AlertShortCopyWithImpl<$Res, _$_AlertShort>
    implements _$$_AlertShortCopyWith<$Res> {
  __$$_AlertShortCopyWithImpl(_$_AlertShort _value, $Res Function(_$_AlertShort) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? title = null,
    Object? message = null,
    Object? threshold = null,
  }) {
    return _then(_$_AlertShort(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as AccountId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AlertShortTitle,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AlertShortMessage,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AlertShort implements _AlertShort {
  const _$_AlertShort(
      {required this.accountId,
      required this.title,
      required this.message,
      required this.threshold});

  @override
  final AccountId accountId;
  @override
  final AlertShortTitle title;
  @override
  final AlertShortMessage message;
  @override
  final int threshold;

  @override
  String toString() {
    return 'AlertShort(accountId: $accountId, title: $title, message: $message, threshold: $threshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertShort &&
            (identical(other.accountId, accountId) || other.accountId == accountId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, title, message, threshold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertShortCopyWith<_$_AlertShort> get copyWith => __$$_AlertShortCopyWithImpl<_$_AlertShort>(this, _$identity);
}

abstract class _AlertShort implements AlertShort {
  const factory _AlertShort(
      {required final AccountId accountId,
      required final AlertShortTitle title,
      required final AlertShortMessage message,
      required final int threshold}) = _$_AlertShort;

  @override
  AccountId get accountId;
  @override
  AlertShortTitle get title;
  @override
  AlertShortMessage get message;
  @override
  int get threshold;
  @override
  @JsonKey(ignore: true)
  _$$_AlertShortCopyWith<_$_AlertShort> get copyWith => throw _privateConstructorUsedError;
}
