import 'dart:convert';

class BarDataResponse {
  List<BarData>? items;

  BarDataResponse({
    this.items,
  });

  factory BarDataResponse.fromJson(String str) =>
      BarDataResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BarDataResponse.fromMap(Map<String, dynamic> json) => BarDataResponse(
        items: json["items"] == null
            ? []
            : List<BarData>.from(json["items"]!.map((x) => BarData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toMap())),
      };
}

class BarData {
  int? x;
  int? y;

  BarData({
    this.x,
    this.y,
  });

  factory BarData.fromJson(String str) => BarData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BarData.fromMap(Map<String, dynamic> json) => BarData(
        x: json["x"],
        y: json["y"],
      );

  Map<String, dynamic> toMap() => {
        "x": x,
        "y": y,
      };
}
