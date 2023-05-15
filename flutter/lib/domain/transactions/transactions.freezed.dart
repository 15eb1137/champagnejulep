// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Transactions {
  List<Transaction> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsCopyWith<Transactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsCopyWith<$Res> {
  factory $TransactionsCopyWith(
          Transactions value, $Res Function(Transactions) then) =
      _$TransactionsCopyWithImpl<$Res, Transactions>;
  @useResult
  $Res call({List<Transaction> children});
}

/// @nodoc
class _$TransactionsCopyWithImpl<$Res, $Val extends Transactions>
    implements $TransactionsCopyWith<$Res> {
  _$TransactionsCopyWithImpl(this._value, this._then);

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
              as List<Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionsCopyWith<$Res>
    implements $TransactionsCopyWith<$Res> {
  factory _$$_TransactionsCopyWith(
          _$_Transactions value, $Res Function(_$_Transactions) then) =
      __$$_TransactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Transaction> children});
}

/// @nodoc
class __$$_TransactionsCopyWithImpl<$Res>
    extends _$TransactionsCopyWithImpl<$Res, _$_Transactions>
    implements _$$_TransactionsCopyWith<$Res> {
  __$$_TransactionsCopyWithImpl(
      _$_Transactions _value, $Res Function(_$_Transactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_Transactions(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$_Transactions implements _Transactions {
  _$_Transactions(final List<Transaction> children) : _children = children;

  final List<Transaction> _children;
  @override
  List<Transaction> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Transactions(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transactions &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsCopyWith<_$_Transactions> get copyWith =>
      __$$_TransactionsCopyWithImpl<_$_Transactions>(this, _$identity);
}

abstract class _Transactions implements Transactions {
  factory _Transactions(final List<Transaction> children) = _$_Transactions;

  @override
  List<Transaction> get children;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsCopyWith<_$_Transactions> get copyWith =>
      throw _privateConstructorUsedError;
}
