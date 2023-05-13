// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alerts_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlertsShort {
  List<AlertShort> get alertsShort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlertsShortCopyWith<AlertsShort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertsShortCopyWith<$Res> {
  factory $AlertsShortCopyWith(AlertsShort value, $Res Function(AlertsShort) then) =
      _$AlertsShortCopyWithImpl<$Res, AlertsShort>;
  @useResult
  $Res call({List<AlertShort> alertsShort});
}

/// @nodoc
class _$AlertsShortCopyWithImpl<$Res, $Val extends AlertsShort> implements $AlertsShortCopyWith<$Res> {
  _$AlertsShortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertsShort = null,
  }) {
    return _then(_value.copyWith(
      alertsShort: null == alertsShort
          ? _value.alertsShort
          : alertsShort // ignore: cast_nullable_to_non_nullable
              as List<AlertShort>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlertsShortCopyWith<$Res> implements $AlertsShortCopyWith<$Res> {
  factory _$$_AlertsShortCopyWith(_$_AlertsShort value, $Res Function(_$_AlertsShort) then) =
      __$$_AlertsShortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlertShort> alertsShort});
}

/// @nodoc
class __$$_AlertsShortCopyWithImpl<$Res> extends _$AlertsShortCopyWithImpl<$Res, _$_AlertsShort>
    implements _$$_AlertsShortCopyWith<$Res> {
  __$$_AlertsShortCopyWithImpl(_$_AlertsShort _value, $Res Function(_$_AlertsShort) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertsShort = null,
  }) {
    return _then(_$_AlertsShort(
      null == alertsShort
          ? _value._alertsShort
          : alertsShort // ignore: cast_nullable_to_non_nullable
              as List<AlertShort>,
    ));
  }
}

/// @nodoc

class _$_AlertsShort implements _AlertsShort {
  const _$_AlertsShort(final List<AlertShort> alertsShort) : _alertsShort = alertsShort;

  final List<AlertShort> _alertsShort;
  @override
  List<AlertShort> get alertsShort {
    if (_alertsShort is EqualUnmodifiableListView) return _alertsShort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alertsShort);
  }

  @override
  String toString() {
    return 'AlertsShort(alertsShort: $alertsShort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertsShort &&
            const DeepCollectionEquality().equals(other._alertsShort, _alertsShort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_alertsShort));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertsShortCopyWith<_$_AlertsShort> get copyWith =>
      __$$_AlertsShortCopyWithImpl<_$_AlertsShort>(this, _$identity);
}

abstract class _AlertsShort implements AlertsShort {
  const factory _AlertsShort(final List<AlertShort> alertsShort) = _$_AlertsShort;

  @override
  List<AlertShort> get alertsShort;
  @override
  @JsonKey(ignore: true)
  _$$_AlertsShortCopyWith<_$_AlertsShort> get copyWith => throw _privateConstructorUsedError;
}
