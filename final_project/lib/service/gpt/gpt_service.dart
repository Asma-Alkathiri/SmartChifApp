import 'dart:convert';
import 'package:final_project/models/gpt_content.dart';
import 'package:final_project/models/gpt_request_model.dart';
import 'package:final_project/models/gpt_response.dart';
import 'package:final_project/service/gpt/dalle_service.dart';
import 'package:final_project/service/gpt/header.dart';
import 'package:http/http.dart' as http;

class GPTService {
  Future<(GPTContent, String)> getSuggestions(String prompt) async {
    final gptRequest = GPTRequest(
      model: "gpt-4",
      messages: [
        Messages(
          role: "system",
          content:
              """you are a greate chife who create greate food, the user will give
              you a list of ingredients and you will make a food for him, your response
              will be a json format and will be recipe_name and description,
              like this {"recipe_name": "","steps": ""}. give a descriptive recipe_name 
              and will be step by step, no new lines just oneline json format""",
        ),
        Messages(
          role: "user",
          content: prompt,
        ),
      ],
    );

    final request = await http.post(
      OpenAi.chatGPTuri,
      headers: OpenAi.openAiheaders,
      body: json.encode(
        gptRequest.toJson(),
      ),
    );
    final jsonData = json.decode(request.body);
    final gptResponse = GPTResponse.fromJson(jsonData);
    final content = gptResponse.choices![0].message!.content;
    final jsonContent = json.decode('$content');
    final gptContent = GPTContent.fromJson(jsonContent);
    final image = await DalleService().getImage('${gptContent.recipeName}');

    return (gptContent, image);
  }
}
