import 'user/user.dart';

abstract class DomainRepository {
  void saveUser();
  User getUser();
}
