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

class UserIdConverter implements JsonConverter<UserId, String> {
  const UserIdConverter();

  @override
  UserId fromJson(String json) => UserId(json);

  @override
  String toJson(UserId object) => object.value;
}