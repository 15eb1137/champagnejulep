// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shortage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Shortage {
  AccountId get accountId => throw _privateConstructorUsedError;
  ShortageTitle get title => throw _privateConstructorUsedError;
  ShortageMessage get message => throw _privateConstructorUsedError;
  int get threshold => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortageCopyWith<Shortage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortageCopyWith<$Res> {
  factory $ShortageCopyWith(Shortage value, $Res Function(Shortage) then) =
      _$ShortageCopyWithImpl<$Res, Shortage>;
  @useResult
  $Res call(
      {AccountId accountId,
      ShortageTitle title,
      ShortageMessage message,
      int threshold});

  $AccountIdCopyWith<$Res> get accountId;
  $ShortageTitleCopyWith<$Res> get title;
  $ShortageMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ShortageCopyWithImpl<$Res, $Val extends Shortage>
    implements $ShortageCopyWith<$Res> {
  _$ShortageCopyWithImpl(this._value, this._then);

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
              as ShortageTitle,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ShortageMessage,
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
  $ShortageTitleCopyWith<$Res> get title {
    return $ShortageTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShortageMessageCopyWith<$Res> get message {
    return $ShortageMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShortageCopyWith<$Res> implements $ShortageCopyWith<$Res> {
  factory _$$_ShortageCopyWith(
          _$_Shortage value, $Res Function(_$_Shortage) then) =
      __$$_ShortageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountId accountId,
      ShortageTitle title,
      ShortageMessage message,
      int threshold});

  @override
  $AccountIdCopyWith<$Res> get accountId;
  @override
  $ShortageTitleCopyWith<$Res> get title;
  @override
  $ShortageMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_ShortageCopyWithImpl<$Res>
    extends _$ShortageCopyWithImpl<$Res, _$_Shortage>
    implements _$$_ShortageCopyWith<$Res> {
  __$$_ShortageCopyWithImpl(
      _$_Shortage _value, $Res Function(_$_Shortage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? title = null,
    Object? message = null,
    Object? threshold = null,
  }) {
    return _then(_$_Shortage(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as AccountId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ShortageTitle,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ShortageMessage,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Shortage implements _Shortage {
  const _$_Shortage(
      {required this.accountId,
      required this.title,
      required this.message,
      required this.threshold});

  @override
  final AccountId accountId;
  @override
  final ShortageTitle title;
  @override
  final ShortageMessage message;
  @override
  final int threshold;

  @override
  String toString() {
    return 'Shortage(accountId: $accountId, title: $title, message: $message, threshold: $threshold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shortage &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
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
  _$$_ShortageCopyWith<_$_Shortage> get copyWith =>
      __$$_ShortageCopyWithImpl<_$_Shortage>(this, _$identity);
}

abstract class _Shortage implements Shortage {
  const factory _Shortage(
      {required final AccountId accountId,
      required final ShortageTitle title,
      required final ShortageMessage message,
      required final int threshold}) = _$_Shortage;

  @override
  AccountId get accountId;
  @override
  ShortageTitle get title;
  @override
  ShortageMessage get message;
  @override
  int get threshold;
  @override
  @JsonKey(ignore: true)
  _$$_ShortageCopyWith<_$_Shortage> get copyWith =>
      throw _privateConstructorUsedError;
}
