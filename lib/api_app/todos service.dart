import 'package:dio/dio.dart';
import 'package:mi_card/api_app/todos%20model.dart';

class TodosService {
  final Dio dio = Dio(
   BaseOptions(
    baseUrl: 'https://dummyjson.com',
   ),
  );

  Future<List<TodosModel>> getTodosService() async {
    final response = await dio.get('/todos');
    final List todos = response.data['todos'];
    return todos.map((todos)=> TodosModel.fromJson(todos))
    .toList();
  }
}