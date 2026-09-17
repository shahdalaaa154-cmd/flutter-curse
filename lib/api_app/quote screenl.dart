import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mi_card/api_app/quote%20controller.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(QuoteController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
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
                  onPressed: controller.getQuotes,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: controller.getQuotes,
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: controller.quotes.length,
            itemBuilder: (context, index) {
              final quote = controller.quotes[index];

              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '"${quote.quote}"',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '- ${quote.author}',
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