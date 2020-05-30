class Wand {
  String wood;
  String core;
  dynamic length;

  Wand({
    this.wood,
    this.core,
    this.length,
  });

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: json["wood"],
        core: json["core"],
        length: json["length"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "wood": wood,
        "core": core,
        "length": length,
      };
}
