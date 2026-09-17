import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mi_card/api_app/todos%20model.dart';
import 'package:mi_card/api_app/todos%20service.dart';

class TodosController extends GetxController {
  final TodosService service = TodosService();

  final todos = <TodosModel>[].obs;
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }

  Future<void> getTodos() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final result = await service.getTodosService();

      todos.assignAll(result);
    } catch (e) {
      errorMessage.value = 'Something went wrong';
    } finally {
      isLoading.value = false;
    }
  }
}