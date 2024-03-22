class CrimeTrendsModel {
  int? year;
  int? total;

  CrimeTrendsModel({this.year, this.total});

  CrimeTrendsModel.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    total = json['total'];
  }

  get sales => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['total'] = this.total;
    return data;
  }
}
