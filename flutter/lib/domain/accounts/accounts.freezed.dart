// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Accounts {
  List<Account> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountsCopyWith<Accounts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsCopyWith<$Res> {
  factory $AccountsCopyWith(Accounts value, $Res Function(Accounts) then) = _$AccountsCopyWithImpl<$Res, Accounts>;
  @useResult
  $Res call({List<Account> children});
}

/// @nodoc
class _$AccountsCopyWithImpl<$Res, $Val extends Accounts> implements $AccountsCopyWith<$Res> {
  _$AccountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountsCopyWith<$Res> implements $AccountsCopyWith<$Res> {
  factory _$$_AccountsCopyWith(_$_Accounts value, $Res Function(_$_Accounts) then) = __$$_AccountsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Account> children});
}

/// @nodoc
class __$$_AccountsCopyWithImpl<$Res> extends _$AccountsCopyWithImpl<$Res, _$_Accounts>
    implements _$$_AccountsCopyWith<$Res> {
  __$$_AccountsCopyWithImpl(_$_Accounts _value, $Res Function(_$_Accounts) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_Accounts(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_Accounts implements _Accounts {
  const _$_Accounts(final List<Account> children) : _children = children;

  final List<Account> _children;
  @override
  List<Account> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Accounts(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accounts &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountsCopyWith<_$_Accounts> get copyWith => __$$_AccountsCopyWithImpl<_$_Accounts>(this, _$identity);
}

abstract class _Accounts implements Accounts {
  const factory _Accounts(final List<Account> children) = _$_Accounts;

  @override
  List<Account> get children;
  @override
  @JsonKey(ignore: true)
  _$$_AccountsCopyWith<_$_Accounts> get copyWith => throw _privateConstructorUsedError;
}
