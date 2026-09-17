import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mi_card/api_app/quote%20model.dart';
import 'package:mi_card/api_app/quote%20service.dart';

class QuoteController extends GetxController {
  final QuoteService service = QuoteService();

  final quotes = <QuoteModel>[].obs;
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getQuotes();
  }

  Future<void> getQuotes() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final result = await service.getQuotesService();

      quotes.assignAll(result);
    } catch (e) {
      errorMessage.value = 'Something went wrong';
    } finally {
      isLoading.value = false;
    }
  }
}