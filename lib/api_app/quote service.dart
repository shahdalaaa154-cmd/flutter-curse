import 'package:dio/dio.dart';
import 'package:mi_card/api_app/quote%20model.dart';

class QuoteService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://dummyjson.com',
    ),
  );

Future<List<QuoteModel>> getQuotesService() async {
final response = await dio.get('/quotes');
final List quotes = response.data['quotes'];
return quotes.map((quote)=> QuoteModel.fromJson(quote))
.toList();

}
}