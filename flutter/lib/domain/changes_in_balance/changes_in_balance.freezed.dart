// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changes_in_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangesInBalance {
  List<ChangeInBalance> get changesInBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangesInBalanceCopyWith<ChangesInBalance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangesInBalanceCopyWith<$Res> {
  factory $ChangesInBalanceCopyWith(ChangesInBalance value, $Res Function(ChangesInBalance) then) =
      _$ChangesInBalanceCopyWithImpl<$Res, ChangesInBalance>;
  @useResult
  $Res call({List<ChangeInBalance> changesInBalance});
}

/// @nodoc
class _$ChangesInBalanceCopyWithImpl<$Res, $Val extends ChangesInBalance> implements $ChangesInBalanceCopyWith<$Res> {
  _$ChangesInBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changesInBalance = null,
  }) {
    return _then(_value.copyWith(
      changesInBalance: null == changesInBalance
          ? _value.changesInBalance
          : changesInBalance // ignore: cast_nullable_to_non_nullable
              as List<ChangeInBalance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangesInBalanceCopyWith<$Res> implements $ChangesInBalanceCopyWith<$Res> {
  factory _$$_ChangesInBalanceCopyWith(_$_ChangesInBalance value, $Res Function(_$_ChangesInBalance) then) =
      __$$_ChangesInBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChangeInBalance> changesInBalance});
}

/// @nodoc
class __$$_ChangesInBalanceCopyWithImpl<$Res> extends _$ChangesInBalanceCopyWithImpl<$Res, _$_ChangesInBalance>
    implements _$$_ChangesInBalanceCopyWith<$Res> {
  __$$_ChangesInBalanceCopyWithImpl(_$_ChangesInBalance _value, $Res Function(_$_ChangesInBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changesInBalance = null,
  }) {
    return _then(_$_ChangesInBalance(
      null == changesInBalance
          ? _value._changesInBalance
          : changesInBalance // ignore: cast_nullable_to_non_nullable
              as List<ChangeInBalance>,
    ));
  }
}

/// @nodoc

class _$_ChangesInBalance extends _ChangesInBalance {
  const _$_ChangesInBalance(final List<ChangeInBalance> changesInBalance)
      : _changesInBalance = changesInBalance,
        super._();

  final List<ChangeInBalance> _changesInBalance;
  @override
  List<ChangeInBalance> get changesInBalance {
    if (_changesInBalance is EqualUnmodifiableListView) return _changesInBalance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changesInBalance);
  }

  @override
  String toString() {
    return 'ChangesInBalance(changesInBalance: $changesInBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangesInBalance &&
            const DeepCollectionEquality().equals(other._changesInBalance, _changesInBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_changesInBalance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangesInBalanceCopyWith<_$_ChangesInBalance> get copyWith =>
      __$$_ChangesInBalanceCopyWithImpl<_$_ChangesInBalance>(this, _$identity);
}

abstract class _ChangesInBalance extends ChangesInBalance {
  const factory _ChangesInBalance(final List<ChangeInBalance> changesInBalance) = _$_ChangesInBalance;
  const _ChangesInBalance._() : super._();

  @override
  List<ChangeInBalance> get changesInBalance;
  @override
  @JsonKey(ignore: true)
  _$$_ChangesInBalanceCopyWith<_$_ChangesInBalance> get copyWith => throw _privateConstructorUsedError;
}
