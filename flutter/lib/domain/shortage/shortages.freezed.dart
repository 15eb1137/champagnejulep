// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shortages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Shortages {
  List<Shortage> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortagesCopyWith<Shortages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortagesCopyWith<$Res> {
  factory $ShortagesCopyWith(Shortages value, $Res Function(Shortages) then) =
      _$ShortagesCopyWithImpl<$Res, Shortages>;
  @useResult
  $Res call({List<Shortage> children});
}

/// @nodoc
class _$ShortagesCopyWithImpl<$Res, $Val extends Shortages>
    implements $ShortagesCopyWith<$Res> {
  _$ShortagesCopyWithImpl(this._value, this._then);

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
              as List<Shortage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortagesCopyWith<$Res> implements $ShortagesCopyWith<$Res> {
  factory _$$_ShortagesCopyWith(
          _$_Shortages value, $Res Function(_$_Shortages) then) =
      __$$_ShortagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shortage> children});
}

/// @nodoc
class __$$_ShortagesCopyWithImpl<$Res>
    extends _$ShortagesCopyWithImpl<$Res, _$_Shortages>
    implements _$$_ShortagesCopyWith<$Res> {
  __$$_ShortagesCopyWithImpl(
      _$_Shortages _value, $Res Function(_$_Shortages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_Shortages(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Shortage>,
    ));
  }
}

/// @nodoc

class _$_Shortages extends _Shortages {
  const _$_Shortages(final List<Shortage> children)
      : _children = children,
        super._();

  final List<Shortage> _children;
  @override
  List<Shortage> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Shortages(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shortages &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortagesCopyWith<_$_Shortages> get copyWith =>
      __$$_ShortagesCopyWithImpl<_$_Shortages>(this, _$identity);
}

abstract class _Shortages extends Shortages {
  const factory _Shortages(final List<Shortage> children) = _$_Shortages;
  const _Shortages._() : super._();

  @override
  List<Shortage> get children;
  @override
  @JsonKey(ignore: true)
  _$$_ShortagesCopyWith<_$_Shortages> get copyWith =>
      throw _privateConstructorUsedError;
}
