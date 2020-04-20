class ProductItemModal{
  String description;
  String type;
  String name;
  String img;

  ProductItemModal({
    this.description,
    this.img,
    this.name,
    this.type
});

  factory ProductItemModal.fromJson(dynamic json){
    return ProductItemModal(
      description: json['description'],
      type: json['type'],
      name: json['name'],
      img: json['img'],
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