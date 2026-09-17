import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_card/api_app/todos%20controller.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TodosController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(controller.errorMessage.value),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: controller.getTodos,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: controller.getTodos,
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              final todo = controller.todos[index];

              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '"${todo.todo}"',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '- ${todo.userId}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}