class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza({
    required this.id,
    required this.pizzaName,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      // Step 3 - Handle String to int + null
      id: int.tryParse(json['id'].toString()) ?? 0,

      // Step 6 & 10 - Avoid null & ensure string
      pizzaName: json['pizzaName'] != null
          ? json['pizzaName'].toString()
          : 'No name',

      description: json['description'] != null
          ? json['description'].toString()
          : '',

      // Step 8 - Handle String to double + null
      price: double.tryParse(json['price'].toString()) ?? 0.0,

      // Step 5 & 6 - Avoid null
      imageUrl: json['imageUrl'] != null
          ? json['imageUrl'].toString()
          : '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}