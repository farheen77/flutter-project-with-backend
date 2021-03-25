class User {
  int id;
  String name;
  String series;
  String number;
  String image;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.name,
      this.series,
      this.number,
      this.image,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    series = json['Series'];
    number = json['Number'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['Series'] = this.series;
    data['Number'] = this.number;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
