import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@freezed
class AccountId {
  final String _value;

  AccountId(this._value)
      : assert(_value.isNotEmpty),
        assert(_value != ''),
        assert(Uuid.isValidUUID(fromString: _value));

  factory AccountId.create() => AccountId(const Uuid().v4());

  String get value => _value;
}
