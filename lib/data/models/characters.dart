class Character {
  late int characterId;
  late String name;
  late String nickname;
  late String characterImageUrl;
  late List<dynamic> jobs;
  late String stateOfDeath;
  late List<int> breakingBadAppearance;
  late String actorName;
  late String twoSeriesCategory;
  late List<int> betterCallSaulAppearance;

  Character.fromJson(Map<String, dynamic> json) {
    characterId = json['char_id'];
    name = json['name'];
    nickname = json['nickname'];
    characterImageUrl = json['img'];
    jobs = json['occupation'];
    stateOfDeath = json['status'];
    breakingBadAppearance = json['appearance'];
    actorName = json['portrayed'];
    twoSeriesCategory = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }
}
