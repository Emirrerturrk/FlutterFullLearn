part of './part_of_learn.dart';

class _PartOfBar extends StatelessWidget implements PreferredSizeWidget {
  const _PartOfBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("data"),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.account_balance))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
