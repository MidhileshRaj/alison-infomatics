import 'dart:convert';

import 'product_model.dart';

class HomePageModel {
  final int success;
  final String message;
  final List<Banner> banner1;
  final List<dynamic> banner2;
  final List<Banner> banner3;
  final List<Banner> banner4;
  final List<dynamic> banner5;
  final List<Products> recentviews;
  final List<Products> ourProducts;
  final List<Products> suggestedProducts;
  final List<Products> bestSeller;
  final List<Products> flashSail;
  final List<dynamic> newarrivals;
  final List<Ory> categories;
  final List<Ory> topAccessories;
  final List<FeaturedBrand> featuredbrands;
  final int cartcount;
  final int wishlistcount;
  final Currency currency;
  final int notificationCount;

  HomePageModel({
    required this.success,
    required this.message,
    required this.banner1,
    required this.banner2,
    required this.banner3,
    required this.banner4,
    required this.banner5,
    required this.recentviews,
    required this.ourProducts,
    required this.suggestedProducts,
    required this.bestSeller,
    required this.flashSail,
    required this.newarrivals,
    required this.categories,
    required this.topAccessories,
    required this.featuredbrands,
    required this.cartcount,
    required this.wishlistcount,
    required this.currency,
    required this.notificationCount,
  });

  factory HomePageModel.fromRawJson(String str) => HomePageModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
    success: json["success"],
    message: json["message"],
    banner1: List<Banner>.from(json["banner1"].map((x) => Banner.fromJson(x))),
    banner2: List<dynamic>.from(json["banner2"].map((x) => x)),
    banner3: List<Banner>.from(json["banner3"].map((x) => Banner.fromJson(x))),
    banner4: List<Banner>.from(json["banner4"].map((x) => Banner.fromJson(x))),
    banner5: List<dynamic>.from(json["banner5"].map((x) => x)),
    recentviews: List<Products>.from(json["recentviews"].map((x) => Products.fromJson(x))),
    ourProducts: List<Products>.from(json["our_products"].map((x) => Products.fromJson(x))),
    suggestedProducts: List<Products>.from(json["suggested_products"].map((x) => Products.fromJson(x))),
    bestSeller: List<Products>.from(json["best_seller"].map((x) => Products.fromJson(x))),
    flashSail: List<Products>.from(json["flash_sail"].map((x) => Products.fromJson(x))),
    newarrivals: List<dynamic>.from(json["newarrivals"].map((x) => x)),
    categories: List<Ory>.from(json["categories"].map((x) => Ory.fromJson(x))),
    topAccessories: List<Ory>.from(json["top_accessories"].map((x) => Ory.fromJson(x))),
    featuredbrands: List<FeaturedBrand>.from(json["featuredbrands"].map((x) => FeaturedBrand.fromJson(x))),
    cartcount: json["cartcount"],
    wishlistcount: json["wishlistcount"],
    currency: Currency.fromJson(json["currency"]),
    notificationCount: json["notification_count"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "banner1": List<dynamic>.from(banner1.map((x) => x.toJson())),
    "banner2": List<dynamic>.from(banner2.map((x) => x)),
    "banner3": List<dynamic>.from(banner3.map((x) => x.toJson())),
    "banner4": List<dynamic>.from(banner4.map((x) => x.toJson())),
    "banner5": List<dynamic>.from(banner5.map((x) => x)),
    "recentviews": List<dynamic>.from(recentviews.map((x) => x.toJson())),
    "our_products": List<dynamic>.from(ourProducts.map((x) => x.toJson())),
    "suggested_products": List<dynamic>.from(suggestedProducts.map((x) => x.toJson())),
    "best_seller": List<dynamic>.from(bestSeller.map((x) => x.toJson())),
    "flash_sail": List<dynamic>.from(flashSail.map((x) => x.toJson())),
    "newarrivals": List<dynamic>.from(newarrivals.map((x) => x)),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "top_accessories": List<dynamic>.from(topAccessories.map((x) => x.toJson())),
    "featuredbrands": List<dynamic>.from(featuredbrands.map((x) => x.toJson())),
    "cartcount": cartcount,
    "wishlistcount": wishlistcount,
    "currency": currency.toJson(),
    "notification_count": notificationCount,
  };
}

class Banner {
  final int id;
  final int linkType;
  final String linkValue;
  final String image;
  final String title;
  final String subTitle;
  final dynamic logo;

  Banner({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.logo,
  });

  factory Banner.fromRawJson(String str) => Banner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
    id: json["id"],
    linkType: json["link_type"],
    linkValue: json["link_value"],
    image: json["image"],
    title: json["title"],
    subTitle: json["sub_title"],
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "link_type": linkType,
    "link_value": linkValue,
    "image": image,
    "title": title,
    "sub_title": subTitle,
    "logo": logo,
  };
}


class Currency {
  final String name;
  final String code;
  final String symbolLeft;
  final String symbolRight;
  final String value;
  final int status;

  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.status,
  });

  factory Currency.fromRawJson(String str) => Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    name: json["name"],
    code: json["code"],
    symbolLeft: json["symbol_left"],
    symbolRight: json["symbol_right"],
    value: json["value"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "code": code,
    "symbol_left": symbolLeft,
    "symbol_right": symbolRight,
    "value": value,
    "status": status,
  };
}
