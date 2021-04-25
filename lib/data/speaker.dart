class Speaker {
  String name;
  String picture;
  String title;
  String description;

  Speaker(this.name, this.title, this.description, this.picture);

  factory Speaker.fromJson(dynamic json) {
    return Speaker(
      json["name"],
      json["title"],
      json["description"],
      json["image"],
    );
  }
}
