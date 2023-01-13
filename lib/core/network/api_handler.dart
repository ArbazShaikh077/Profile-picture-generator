import 'package:dio/dio.dart';

// Create a Dio instance
final dio = Dio();

// Add an interceptor to add the API key to the headers
dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options) async {
      options.headers['Authorization'] = 'YOUR_API_KEY';
    }
));

// Function to send a question to the API
Future<Response> askQuestion(String question) async {
  try {
    final response = await dio.post('https://api.openai.com/v1/engines/davinci-codex/completions',
        data: {
          'prompt': question,
          'temperature': 0.5,
        });
    return response;
  } on DioError catch (e) {
    print(e);
    return e.response;
  }
}

// Example usage
void example() async {
  final response = await askQuestion("What is the capital of France?");
  print(response.data);
}
