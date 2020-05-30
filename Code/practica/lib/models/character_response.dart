// To parse this JSON data, do
//
//     final characterResponse = characterResponseFromJson(jsonString);

import 'dart:convert';

import 'package:practica/models/wand.dart';

List<CharacterResponse> characterResponseFromJson(String str) =>
    List<CharacterResponse>.from(
        json.decode(str).map((x) => CharacterResponse.fromJson(x)));

String characterResponseToJson(List<CharacterResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CharacterResponse {
  String name;
  Species species;
  Gender gender;
  String house;
  String dateOfBirth;
  dynamic yearOfBirth;
  String ancestry;
  String eyeColour;
  String hairColour;
  Wand wand;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  bool alive;
  String image;

  CharacterResponse({
    this.name,
    this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.wand,
    this.patronus,
    this.hogwartsStudent,
    this.hogwartsStaff,
    this.actor,
    this.alive,
    this.image,
  });

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      CharacterResponse(
        name: json["name"],
        species: speciesValues.map[json["species"]],
        gender: genderValues.map[json["gender"]],
        house: json["house"],
        dateOfBirth: json["dateOfBirth"],
        yearOfBirth: json["yearOfBirth"].toString(),
        ancestry: json["ancestry"],
        eyeColour: json["eyeColour"],
        hairColour: json["hairColour"],
        wand: Wand.fromJson(json["wand"]),
        patronus: json["patronus"],
        hogwartsStudent: json["hogwartsStudent"],
        hogwartsStaff: json["hogwartsStaff"],
        actor: json["actor"],
        alive: json["alive"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "species": speciesValues.reverse[species],
        "gender": genderValues.reverse[gender],
        "house": house,
        "dateOfBirth": dateOfBirth,
        "yearOfBirth": yearOfBirth,
        "ancestry": ancestry,
        "eyeColour": eyeColour,
        "hairColour": hairColour,
        "wand": wand.toJson(),
        "patronus": patronus,
        "hogwartsStudent": hogwartsStudent,
        "hogwartsStaff": hogwartsStaff,
        "actor": actor,
        "alive": alive,
        "image": image,
      };
}

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({"female": Gender.FEMALE, "male": Gender.MALE});

enum Species { HUMAN, HALF_GIANT, WEREWOLF, CAT }

final speciesValues = EnumValues({
  "cat": Species.CAT,
  "half-giant": Species.HALF_GIANT,
  "human": Species.HUMAN,
  "werewolf": Species.WEREWOLF
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
