// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @TransactionIdConverter()
  TransactionId get id => throw _privateConstructorUsedError;
  @TransactionTitleConverter()
  TransactionTitle get title => throw _privateConstructorUsedError;
  bool get calcAuto => throw _privateConstructorUsedError;
  @TransactionAtConverter()
  TransactionAt get transactionAt => throw _privateConstructorUsedError;
  bool get isCalced => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@TransactionIdConverter() TransactionId id,
      @TransactionTitleConverter() TransactionTitle title,
      bool calcAuto,
      @TransactionAtConverter() TransactionAt transactionAt,
      bool isCalced,
      int amount});

  $TransactionIdCopyWith<$Res> get id;
  $TransactionTitleCopyWith<$Res> get title;
  $TransactionAtCopyWith<$Res> get transactionAt;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? calcAuto = null,
    Object? transactionAt = null,
    Object? isCalced = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TransactionTitle,
      calcAuto: null == calcAuto
          ? _value.calcAuto
          : calcAuto // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionAt: null == transactionAt
          ? _value.transactionAt
          : transactionAt // ignore: cast_nullable_to_non_nullable
              as TransactionAt,
      isCalced: null == isCalced
          ? _value.isCalced
          : isCalced // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionIdCopyWith<$Res> get id {
    return $TransactionIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionTitleCopyWith<$Res> get title {
    return $TransactionTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionAtCopyWith<$Res> get transactionAt {
    return $TransactionAtCopyWith<$Res>(_value.transactionAt, (value) {
      return _then(_value.copyWith(transactionAt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TransactionIdConverter() TransactionId id,
      @TransactionTitleConverter() TransactionTitle title,
      bool calcAuto,
      @TransactionAtConverter() TransactionAt transactionAt,
      bool isCalced,
      int amount});

  @override
  $TransactionIdCopyWith<$Res> get id;
  @override
  $TransactionTitleCopyWith<$Res> get title;
  @override
  $TransactionAtCopyWith<$Res> get transactionAt;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? calcAuto = null,
    Object? transactionAt = null,
    Object? isCalced = null,
    Object? amount = null,
  }) {
    return _then(_$_Transaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TransactionId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TransactionTitle,
      calcAuto: null == calcAuto
          ? _value.calcAuto
          : calcAuto // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionAt: null == transactionAt
          ? _value.transactionAt
          : transactionAt // ignore: cast_nullable_to_non_nullable
              as TransactionAt,
      isCalced: null == isCalced
          ? _value.isCalced
          : isCalced // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction with DiagnosticableTreeMixin {
  const _$_Transaction(
      {@TransactionIdConverter() required this.id,
      @TransactionTitleConverter() required this.title,
      required this.calcAuto,
      @TransactionAtConverter() required this.transactionAt,
      required this.isCalced,
      required this.amount})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  @TransactionIdConverter()
  final TransactionId id;
  @override
  @TransactionTitleConverter()
  final TransactionTitle title;
  @override
  final bool calcAuto;
  @override
  @TransactionAtConverter()
  final TransactionAt transactionAt;
  @override
  final bool isCalced;
  @override
  final int amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction(id: $id, title: $title, calcAuto: $calcAuto, transactionAt: $transactionAt, isCalced: $isCalced, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('calcAuto', calcAuto))
      ..add(DiagnosticsProperty('transactionAt', transactionAt))
      ..add(DiagnosticsProperty('isCalced', isCalced))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.calcAuto, calcAuto) ||
                other.calcAuto == calcAuto) &&
            (identical(other.transactionAt, transactionAt) ||
                other.transactionAt == transactionAt) &&
            (identical(other.isCalced, isCalced) ||
                other.isCalced == isCalced) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, calcAuto, transactionAt, isCalced, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {@TransactionIdConverter() required final TransactionId id,
      @TransactionTitleConverter() required final TransactionTitle title,
      required final bool calcAuto,
      @TransactionAtConverter() required final TransactionAt transactionAt,
      required final bool isCalced,
      required final int amount}) = _$_Transaction;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @TransactionIdConverter()
  TransactionId get id;
  @override
  @TransactionTitleConverter()
  TransactionTitle get title;
  @override
  bool get calcAuto;
  @override
  @TransactionAtConverter()
  TransactionAt get transactionAt;
  @override
  bool get isCalced;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
