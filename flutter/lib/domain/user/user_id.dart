import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'user_id.freezed.dart';

@freezed
class UserId with _$UserId {
  @Assert('value.isNotEmpty')
  @Assert('Uuid.isValidUUID(fromString: value)')
  factory UserId(String value) = _UserId;

  factory UserId.create() => UserId(const Uuid().v4());
}
