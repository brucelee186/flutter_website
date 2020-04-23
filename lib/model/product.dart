class ProductItemModal{
  String description;
  String type;
  String name;
  String img;
  String point;

  ProductItemModal({
    this.description,
    this.img,
    this.name,
    this.type,
    this.point,
});

  factory ProductItemModal.fromJson(dynamic json){
    return ProductItemModal(
      description: json['description'],
      type: json['type'],
      name: json['name'],
      img: json['img'],
      point: json['point'],
    );
  }
}

class ProductListModal{

  List<ProductItemModal> data;
  ProductListModal(this.data);

  factory ProductListModal.fromJson(List json){
    return ProductListModal(
      json.map((e) => ProductItemModal.fromJson(e)).toList()
    );
  }
}