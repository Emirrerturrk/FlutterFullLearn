import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_full_learn/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test("List best of", () {
    List<GenericUser> users = [
      GenericUser("emir1", 10, 01),
      GenericUser("emir2", 10, 01),
      GenericUser("emir3", 10, 01),
      GenericUser("emir4", 10, 01)
    ];
    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split("").toList());
    }).toList();

    try {
      final response = users.singleWhere(
        (element) => element.findUserName("x"),
        orElse: () {
          return GenericUser("name", 1, 2);
        },
      );
      print(response.name);
    } catch (e) {
      print(e);
    }
    print('${users.where((element) => element.money > 5)}');
    users.addAll([GenericUser("name", 20, 5)]);
    users.lastWhere((element) => element.id == 5);
    users.take(5);
    users.remove(GenericUser("emir1", 11, 5));
    users.removeAt(2);
    users.removeWhere((element) => element.id == 11);
  });

  test("List best of with collection", () {
    List<GenericUser> users = [
      GenericUser("emir1", 10, 01),
      GenericUser("emir2", 10, 01),
      GenericUser("emir3", 10, 01),
      GenericUser("emir4", 10, 01)
    ];

    final response =
        users.singleWhereOrNull((element) => element.findUserName("x"));

    users.lastWhereOrNull((element) => element.id == 5);

    print(response);
  });
}
