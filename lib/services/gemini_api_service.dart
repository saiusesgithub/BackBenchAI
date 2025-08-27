import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://backbenchai-backend.vercel.app',
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 60),
  ),
);

Future<Map<String, dynamic>> resultFromText({
  required String text,
  required String mode, // 'summary' | 'bullets' | 'flashcards'
}) async {
  final data = {
    "mode": mode,
    "text": text,
    "options": {
      "language": "en",
      "target_word_count": 180,
      "num_flashcards": 12,
      "tone": "concise",
    },
  };
  final result = await dio.post('/api/generate', data: data);
  return result.data as Map<String, dynamic>;
}
