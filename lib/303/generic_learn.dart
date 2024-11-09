// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }

    int initialValue = admin.role == 1 ? admin.money : 0;

    final sumMoney = users.map((e) => e.money).fold<int>(
        initialValue, (previousValue, element) => previousValue + element);

    final _money = users.fold(initialValue,
        (previousValue, element) => previousValue + element.money);
    return _money;
  }

  Iterable<EMRModel<R>>? showNames<R>(List<GenericUser> users) {
    if (R == String) {
      final names =
          users.map((e) => EMRModel<R>(e.name.split("").toList().cast<R>()));
      return names;
    }
    return null;
  }
}

class EMRModel<T> {
  final String name = "Emir";
  final List<T> items;

  EMRModel(this.items);
}

class GenericUser {
  final String name;
  final int money;
  final int id;

  GenericUser(this.name, this.money, this.id);

  bool findUserName(String name) {
    return this.name == name;
  }

  @override
  String toString() => 'GenericUser(name: $name, money: $money, id: $id)';
}

class AdminUser extends GenericUser {
  final int role;

  AdminUser(super.name, super.money, super.id, this.role);
}
