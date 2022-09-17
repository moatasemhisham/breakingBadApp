class Character {
  late int characterId;
  late String name;
  late String nickname;
  late String characterImage;
  late List<dynamic> jobs;
  late String stateOfDeath;
  late List<dynamic> breakingBadAppearance;
  late String actorName;
  late String twoSeriesCategory;
  late List<dynamic> betterCallSaulAppearance;

  Character.fromJson(Map<String, dynamic> json) {
    characterId = json['char_id'];
    name = json['name'];
    nickname = json['nickname'];
    characterImage = json['img'];
    jobs = json['occupation'];
    stateOfDeath = json['status'];
    breakingBadAppearance = json['appearance'];
    actorName = json['portrayed'];
    twoSeriesCategory = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }
}
