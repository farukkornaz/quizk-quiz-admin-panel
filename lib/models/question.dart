class Question {
  int? id;
  String? question;
  List<String>? options;
  int? answerIndex;

  Question({this.id, this.question, this.options, this.answerIndex});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    options = json['options'].cast<String>();
    answerIndex = json['answer_index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['question'] = question;
    data['options'] = options;
    data['answer_index'] = answerIndex;
    return data;
  }

  @override
  bool operator ==(Object other) {
    return other is Question &&
        other.runtimeType == runtimeType &&
        other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
