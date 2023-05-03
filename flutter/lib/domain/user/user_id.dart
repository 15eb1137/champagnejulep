import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@freezed
class UserId {
  final String _value;

  UserId(this._value)
      : assert(_value.isNotEmpty),
        assert(_value != ''),
        assert(Uuid.isValidUUID(fromString: _value));

  factory UserId.create() => UserId(const Uuid().v4());

  String get value => _value;
}
