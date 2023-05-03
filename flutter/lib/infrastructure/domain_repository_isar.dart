import '../domain/domain_repository.dart';
import '../domain/user/user.dart';

class DomainRepositoryIsar extends DomainRepository {
  @override
  void saveUser() {
    // TODO: implement saveUser
  }

  @override
  User getUser() {
    // TODO: implement getUser
    return User.create();
  }
}
