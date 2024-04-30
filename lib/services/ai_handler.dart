import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

class AIHandler {
  final List<Map<String, String>> messages = [];

  final openAIAPIKey = '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';
  final _openAI = OpenAI.instance.build(
    token: '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',
    baseOption: HttpSetup(
      receiveTimeout: const Duration(seconds: 5),
      connectTimeout: const Duration(seconds: 5),
    ),
  );
  // Default Function
  Future<String> getResponse(String message) async {
    try {
      final request = ChatCompleteText(messages: [
        Map.of({"role": "user", "content": message})
      ], maxToken: 200, model: ChatModel.gptTurbo);

      final response = await _openAI.onChatCompletion(request: request);
      if (response != null) {
        return response.choices[0].message!.content.trim();
      }

      return 'Some thing went wrong';
    } catch (e) {
      return e.toString();
    }
  }

  // Future<String> getResponse(String prompt) async {
  //   const apiKey = "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";
  //   var url = Uri.https("api.openai.com", "/v1/completions");
  //   final response = await http.post(
  //     url,
  //     headers: {
  //       "Content-Type": "application/json",
  //       "Authorization": "Bearer $apiKey"
  //     },
  //     body: json.encode({
  //       "model": "text-davinci-003",
  //       "prompt": prompt,
  //       "temperature": 1,
  //       "max_tokens": 4000,
  //       "top_p": 1,
  //       "frequency_penalty": 0.0,
  //       "presence_penalty": 0.0,
  //     }),
  //   );
  //   Map<String, dynamic> newresponse = jsonDecode(response.body);
  //   return newresponse['choices'][0]['text'];
  // }

  // ChatGPT Generated Functions
  // Future<String> getResponse(String userMessage) async {
  //   const apiUrl = 'https://api.openai.com/v1/chat/completions';

  //   final response = await http.post(
  //     Uri.parse(apiUrl),
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer $openAIAPIKey',
  //     },
  //     body: jsonEncode({
  //       'model': 'gpt-3.5-turbo', // Specify the ChatGPT model
  //       'messages': [
  //         {'role': 'system', 'content': 'You are NLP Model.'},
  //         {'role': 'user', 'content': userMessage},
  //       ],
  //     }),
  //   );

  //   if (response.statusCode == 200) {
  //     final responseData = jsonDecode(response.body);
  //     final modelReply = responseData['choices'][0]['message']['content'];
  //     return modelReply;
  //   } else {
  //     if (kDebugMode) {
  //       print('API Error Response: ${response.body}');
  //     }
  //     throw Exception('Failed to get response from API');
  //   }
  // }

// check whether the user wants to generate image or something else
  // Future<String> isArtPromptAPI(String prompt) async {
  //   try {
  //     final res = await http.post(
  //       // Uri.parse('https://api.openai.com/v1/chat/completions'),
  //       Uri.parse('https://chatgpt-api.shn.hk/v1/'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $openAIAPIKey',
  //       },
  //       body: jsonEncode({
  //         "model": "gpt-3.5-turbo",
  //         "messages": [
  //           {
  //             'role': 'user',
  //             'content':
  //                 'Does this message want to generate an AI picture, image, art or anything similar? $prompt . Simply answer with a yes or no.',
  //           }
  //         ],
  //       }),
  //     );
  //     if (kDebugMode) {
  //       print(res.body);
  //     }
  //     if (res.statusCode == 200) {
  //       String content =
  //           jsonDecode(res.body)['choices'][0]['message']['content'];
  //       content = content.trim();

  //       switch (content) {
  //         case 'Yes':
  //         case 'yes':
  //         case 'Yes.':
  //         case 'yes.':
  //           final res = await dallEAPI(prompt);
  //           return res;
  //         default:
  //           final res = await chatGPTAPI(prompt);
  //           return res;
  //       }
  //     }
  //     return 'An internal error occurred';
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }

  // connects to chatGPT
  // Future<String> chatGPTAPI(String prompt) async {
  //   messages.add({
  //     'role': 'user',
  //     'content': prompt,
  //   });
  //   try {
  //     final res = await http.post(
  //       Uri.parse('https://api.openai.com/v1/chat/completions'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $openAIAPIKey',
  //       },
  //       body: jsonEncode({
  //         "model": "gpt-3.5-turbo",
  //         "messages": messages,
  //       }),
  //     );

  //     if (res.statusCode == 200) {
  //       String content =
  //           jsonDecode(res.body)['choices'][0]['message']['content'];
  //       content = content.trim();

  //       messages.add({
  //         'role': 'assistant',
  //         'content': content,
  //       });
  //       return content;
  //     }
  //     return 'An internal error occurred';
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }

  // // Connects to dallEAPI
  // Future<String> dallEAPI(String prompt) async {
  //   messages.add({
  //     'role': 'user',
  //     'content': prompt,
  //   });
  //   try {
  //     final res = await http.post(
  //       Uri.parse('https://api.openai.com/v1/images/generations'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $openAIAPIKey',
  //       },
  //       body: jsonEncode({
  //         'prompt': prompt,
  //         'n': 1,
  //       }),
  //     );

  //     if (res.statusCode == 200) {
  //       String imageUrl = jsonDecode(res.body)['data'][0]['url'];
  //       imageUrl = imageUrl.trim();

  //       messages.add({
  //         'role': 'assistant',
  //         'content': imageUrl,
  //       });
  //       return imageUrl;
  //     }
  //     return 'An internal error occurred';
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }

  void dispose() {
    _openAI.cancelAIGenerate();
  }
}
