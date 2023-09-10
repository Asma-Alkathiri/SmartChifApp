import 'dart:convert';
import 'package:final_project/models/dalle_request_model.dart';
import 'package:final_project/models/dalle_response.dart';
import 'package:final_project/service/gpt/header.dart';
import 'package:http/http.dart' as http;

class DalleService {
  Future<String> getImage(String recipeName) async {
    final dalleRequest =
        DalleRequest(prompt: recipeName, n: 1, size: '256x256');

    final request = await http.post(
      OpenAi.dallEuri,
      headers: OpenAi.openAiheaders,
      body: json.encode(
        dalleRequest.toJson(),
      ),
    );
    final jsonData = json.decode(request.body);
    final dalleResponse = DalleResponse.fromJson(jsonData);

    return dalleResponse.data?.first.url ?? '';
  }
}
