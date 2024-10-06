
import 'dart:convert';

class Products {
  final int productId;
  final String slug;
  final String code;
  final String homeImg;
  final String name;
  final int isGender;
  final String store;
  final String manufacturer;
  final String oldprice;
  final String price;
  final String image;
  final int cart;
  final int wishlist;

  Products({
    required this.productId,
    required this.slug,
    required this.code,
    required this.homeImg,
    required this.name,
    required this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });

  factory Products.fromRawJson(String str) => Products.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    productId: json["productId"],
    slug: json["slug"],
    code: json["code"],
    homeImg: json["home_img"],
    name: json["name"],
    isGender: json["is_gender"],
    store: json["store"],
    manufacturer: json["manufacturer"],
    oldprice: json["oldprice"],
    price: json["price"],
    image: json["image"],
    cart: json["cart"],
    wishlist: json["wishlist"],
  );

  Map<String, dynamic> toJson() => {
    "productId": productId,
    "slug": slug,
    "code": code,
    "home_img": homeImg,
    "name": name,
    "is_gender": isGender,
    "store": store,
    "manufacturer": manufacturer,
    "oldprice": oldprice,
    "price": price,
    "image": image,
    "cart": cart,
    "wishlist": wishlist,
  };
}

class Ory {
  final FeaturedBrand category;

  Ory({
    required this.category,
  });

  factory Ory.fromRawJson(String str) => Ory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ory.fromJson(Map<String, dynamic> json) => Ory(
    category: FeaturedBrand.fromJson(json["category"]),
  );

  Map<String, dynamic> toJson() => {
    "category": category.toJson(),
  };
}

class FeaturedBrand {
  final int id;
  final String slug;
  final String image;
  final String name;
  final String description;

  FeaturedBrand({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    required this.description,
  });

  factory FeaturedBrand.fromRawJson(String str) => FeaturedBrand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FeaturedBrand.fromJson(Map<String, dynamic> json) => FeaturedBrand(
    id: json["id"],
    slug: json["slug"],
    image: json["image"],
    name: json["name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "image": image,
    "name": name,
    "description": description,
  };
}