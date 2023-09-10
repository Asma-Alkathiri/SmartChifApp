class DalleRequest {
  String? prompt;
  int? n;
  String? size;

  DalleRequest({this.prompt, this.n, this.size});

  DalleRequest.fromJson(Map<String, dynamic> json) {
    prompt = json['prompt'];
    n = json['n'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['prompt'] = prompt;
    data['n'] = n;
    data['size'] = size;
    return data;
  }
}
