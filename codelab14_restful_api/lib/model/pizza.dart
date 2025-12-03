const keyId = 'id';
const keyName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';

class Pizza {
  int? id;
  String? pizzaName;
  String? description;
  double? price;
  String? imageUrl;

  Pizza();

  Pizza.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json[keyId].toString()) ?? 0;
    pizzaName = json[keyName]?.toString() ?? 'No name';
    description = json[keyDescription]?.toString() ?? '';
    price = double.tryParse(json[keyPrice].toString()) ?? 0;
    imageUrl = json[keyImage]?.toString() ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }
}