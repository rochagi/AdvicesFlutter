class AdviceModel {
  Slip? slip;

  AdviceModel({this.slip});

  AdviceModel.fromJson(Map<String, dynamic> json) {
    slip = json['slip'] != null ? new Slip.fromJson(json['slip']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.slip != null) {
      data['slip'] = this.slip!.toJson();
    }
    return data;
  }

  @override
  String toString() => 'AdviceModel(slip: $slip)';
}

class Slip {
  int? id;
  String? advice;

  Slip({required this.id, required this.advice});

  Slip.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    advice = json['advice'] ?? " ";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['advice'] = this.advice;
    return data;
  }

  @override
  String toString() => 'Slip(id: $id, advice: $advice)';
}
