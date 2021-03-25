class ViewDetails {
  int id;
  String name;
  String seriesName;
  String Color;
  String price;
  String createdAt;
  String updatedAt;

  ViewDetails(
      {this.id,
      this.name,
      this.seriesName,
      this.Color,
      this.price,
      this.createdAt,
      this.updatedAt});

  ViewDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    seriesName = json['series_name'];
    Color = json['Color'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['series_name'] = this.seriesName;
    data['Color'] = this.Color;
    data['price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
