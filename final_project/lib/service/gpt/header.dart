class OpenAi {
  static final chatGPTuri =
      Uri.parse('https://api.openai.com/v1/chat/completions');

  static final dallEuri =
      Uri.parse('https://api.openai.com/v1/images/generations');

  static const openAikey =
      'Bearer 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';

  static const openAiorg = 'org-hoIIshAmuJeyXbVq4p8jMEn4';

  static const openAiheaders = {
    "OpenAI-Organization": openAiorg,
    "Authorization": openAikey,
    "Content-Type": "application/json"
  };
}
