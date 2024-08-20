import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test("User calculate", () {
    final users = [
      GenericUser("emir", 10, 01),
      GenericUser("emir", 10, 01),
      GenericUser("emir", 10, 01),
      GenericUser("emir", 10, 01)
    ];
    final userManagement = UserManagement(AdminUser("admin", 15, 1, 1));
    final result = userManagement.calculateMoney(users);
    final respns = userManagement.showNames<String>(users);

    expect(result, 55);
  });
}
