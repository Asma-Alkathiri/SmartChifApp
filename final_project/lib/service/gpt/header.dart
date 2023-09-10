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
