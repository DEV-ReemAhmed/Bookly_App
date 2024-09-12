class ImageLinks {
  ImageLinks({
      required this.smallThumbnail,
      required this.thumbnail,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
  late String smallThumbnail;
  late String thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

}

// class ImageLinks {
// 	 String smallThumbnail;
// 	 String thumbnail;

// 	ImageLinks({required this.smallThumbnail, required this.thumbnail});

// 	factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
// 				smallThumbnail: json['smallThumbnail'] as String,
// 				thumbnail: json['thumbnail'] as String,
// 			);

// 	Map<String, dynamic> toJson() => {
// 				'smallThumbnail': smallThumbnail,
// 				'thumbnail': thumbnail,
// 			};
// }