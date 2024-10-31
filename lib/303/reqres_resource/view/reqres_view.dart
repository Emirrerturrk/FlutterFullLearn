import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/303/reqres_resource/model/resource_model.dart';
import 'package:flutter_full_learn/303/reqres_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqres_resource/viewModel/reqres_provider.dart';
import 'package:flutter_full_learn/product/extension/string_extension.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';
import 'package:provider/provider.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqresProvider>(
      create: (context) => ReqresProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ThemeNotifier>().changeTheme();
            },
          ),
          appBar: AppBar(
              actions: const [_SaveAndNavigateWidget()],
              title: context.watch<ReqresProvider>().isLoading
                  ? const CircularProgressIndicator()
                  : null),
          body: Column(
            children: [
              const _TempPlaceHolder(),
              Expanded(
                child: _resourceListView(
                    context, context.watch<ReqresProvider>().resources),
              ),
            ],
          ),
        );
      },
    );
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            color: Color(items[index].color?.colorValue ?? 0),
            child: Text(items[index].name ?? ""));
      },
    );
  }
}

class _SaveAndNavigateWidget extends StatelessWidget {
  const _SaveAndNavigateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context
              .read<ReqresProvider>()
              .saveToLocale(context.read<ResourceContext>());
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) {
              return const ImageLearn();
            },
          ));
        },
        child: const Icon(Icons.ac_unit));
  }
}

class _TempPlaceHolder extends StatelessWidget {
  const _TempPlaceHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<ReqresProvider, bool>(
      builder: (context, value, child) {
        return value ? const Placeholder() : const Text("data");
      },
      selector: (context, provider) {
        return provider.isLoading;
      },
    );
  }
}
