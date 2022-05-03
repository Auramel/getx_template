import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Database extends GetxService {
  final GetStorage _storage = GetStorage();

  Future<void> clear() async {
    await _storage.erase();
  }
}
