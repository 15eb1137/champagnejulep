// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_scheduled.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsScheduled {
  List<TransactionScheduled> get transactionScheduled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsScheduledCopyWith<TransactionsScheduled> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsScheduledCopyWith<$Res> {
  factory $TransactionsScheduledCopyWith(TransactionsScheduled value, $Res Function(TransactionsScheduled) then) =
      _$TransactionsScheduledCopyWithImpl<$Res, TransactionsScheduled>;
  @useResult
  $Res call({List<TransactionScheduled> transactionScheduled});
}

/// @nodoc
class _$TransactionsScheduledCopyWithImpl<$Res, $Val extends TransactionsScheduled>
    implements $TransactionsScheduledCopyWith<$Res> {
  _$TransactionsScheduledCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionScheduled = null,
  }) {
    return _then(_value.copyWith(
      transactionScheduled: null == transactionScheduled
          ? _value.transactionScheduled
          : transactionScheduled // ignore: cast_nullable_to_non_nullable
              as List<TransactionScheduled>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionsScheduledCopyWith<$Res> implements $TransactionsScheduledCopyWith<$Res> {
  factory _$$_TransactionsScheduledCopyWith(
          _$_TransactionsScheduled value, $Res Function(_$_TransactionsScheduled) then) =
      __$$_TransactionsScheduledCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionScheduled> transactionScheduled});
}

/// @nodoc
class __$$_TransactionsScheduledCopyWithImpl<$Res>
    extends _$TransactionsScheduledCopyWithImpl<$Res, _$_TransactionsScheduled>
    implements _$$_TransactionsScheduledCopyWith<$Res> {
  __$$_TransactionsScheduledCopyWithImpl(_$_TransactionsScheduled _value, $Res Function(_$_TransactionsScheduled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionScheduled = null,
  }) {
    return _then(_$_TransactionsScheduled(
      null == transactionScheduled
          ? _value._transactionScheduled
          : transactionScheduled // ignore: cast_nullable_to_non_nullable
              as List<TransactionScheduled>,
    ));
  }
}

/// @nodoc

class _$_TransactionsScheduled implements _TransactionsScheduled {
  _$_TransactionsScheduled(final List<TransactionScheduled> transactionScheduled)
      : _transactionScheduled = transactionScheduled;

  final List<TransactionScheduled> _transactionScheduled;
  @override
  List<TransactionScheduled> get transactionScheduled {
    if (_transactionScheduled is EqualUnmodifiableListView) return _transactionScheduled;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionScheduled);
  }

  @override
  String toString() {
    return 'TransactionsScheduled(transactionScheduled: $transactionScheduled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsScheduled &&
            const DeepCollectionEquality().equals(other._transactionScheduled, _transactionScheduled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_transactionScheduled));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsScheduledCopyWith<_$_TransactionsScheduled> get copyWith =>
      __$$_TransactionsScheduledCopyWithImpl<_$_TransactionsScheduled>(this, _$identity);
}

abstract class _TransactionsScheduled implements TransactionsScheduled {
  factory _TransactionsScheduled(final List<TransactionScheduled> transactionScheduled) = _$_TransactionsScheduled;

  @override
  List<TransactionScheduled> get transactionScheduled;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsScheduledCopyWith<_$_TransactionsScheduled> get copyWith => throw _privateConstructorUsedError;
}
