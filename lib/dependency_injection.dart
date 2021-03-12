import 'package:get/get.dart';
import 'shared/provider/network_provider.dart';
import 'shared/repository/network_repository.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<NetworkProvider>(() => NetworkProvider(), fenix: true);
    Get.lazyPut<NetworkRepository>(() => NetworkRepository(), fenix: true);
  }
}
