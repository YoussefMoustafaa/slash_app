
class Item {
  final int id;
  final String name;
  final double price;
  final String imgPath;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imgPath,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imgPath: json['image'],
    );
  }
}


class Data {
  final List<Item> bestSelling;
  final List<Item> newArrival;
  final List<Item> recommendedForYou;

  Data({
    required this.bestSelling,
    required this.newArrival,
    required this.recommendedForYou
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      bestSelling: (json['bestSelling'] as List).map((i) => Item.fromJson(i)).toList(),
      newArrival: (json['newArrival'] as List).map((i) => Item.fromJson(i)).toList(),
      recommendedForYou: (json['recommendedForYou'] as List).map((i) => Item.fromJson(i)).toList()
    );
  }

}

