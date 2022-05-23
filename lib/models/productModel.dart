class ProductModel {
  String? subName;
  String? name;
  String? imgUrl;
  String? price;

  ProductModel(
      {required this.subName,
      required this.name,
      required this.imgUrl,
      required this.price});

  ProductModel.fromJson(Map<String, dynamic> json) {
    subName = json['subName'];
    name = json['name'];
    imgUrl = json['imgUrl'];
    price = json['price'];
  }
}
