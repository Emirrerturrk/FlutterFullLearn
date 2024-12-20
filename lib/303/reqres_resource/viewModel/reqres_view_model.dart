import 'package:flutter_full_learn/202/cache/shader_cache_learn.dart';
import 'package:flutter_full_learn/303/reqres_resource/model/resource_model.dart';
import 'package:flutter_full_learn/303/reqres_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqres_resource/view/reqres_view.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';
import 'package:flutter_full_learn/product/service/project_network_manager.dart';

abstract class ReqresViewModel extends LoadingStatefull<ReqresView>
    with ProjectDioMixin {
  late final IReqresService reqresService;
  List<Data> resources = [];

  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(ProjectNetworkManager.instance.service);
    ProjectNetworkManager.instance.addBaseHeader("Emir");
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
