import '../infrastructure/domain_repository_isar.dart';
import 'user/user.dart';
import 'user/user_id.dart';
import 'user/user_premium.dart';

class DomainService {
  static void saveUser({required UserId id, required UserPremium premium}) => DomainRepositoryIsar().saveUser();
  static User getUser() => DomainRepositoryIsar().getUser();
}
