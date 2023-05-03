import 'package:champagnejulep/domain/domain_repository.dart';
import 'package:champagnejulep/domain/user/user.dart';

class DomainRepositoryTest extends DomainRepository {
  @override
  void saveUser() {}

  @override
  User getUser() => User.create();
}
