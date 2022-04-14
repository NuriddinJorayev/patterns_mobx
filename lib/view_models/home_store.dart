import 'package:mobx/mobx.dart';
import 'package:patterns_mobx/models/post_model.dart';
import 'package:patterns_mobx/services/http_server.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  Future<List<Post>>? future;

  @action
  initialize_future() {
    future = Rest_APi.GET_parsed_list(Rest_APi.API_GET);
  }
}
