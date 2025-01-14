import 'package:bookly_app/features/home/data/models/book_model/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_model/reading_modes.dart';
import 'package:bookly_app/features/home/data/models/book_model/summary.dart';

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.description,
    this.authors,
    this.publisher,
    this.readingModes,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String? title;
  String?description;
  List<String>? authors;
  String? publisher;
  ReadingModes? readingModes;
  String? printType;
  List<String>? categories;
  num? averageRating;
  num? ratingsCount;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['printType'] = printType;
    map['categories'] = categories;
    map['averageRating'] = averageRating;
    map['ratingsCount'] = ratingsCount;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }

    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}



// class VolumeInfo {
//   VolumeInfo({
//     this.title,
//     this.description,
//     this.authors,
//     this.publisher,
//     this.readingModes,
//     this.printType,
//     this.categories,
//     this.averageRating,
//     this.ratingsCount,
//     this.maturityRating,
//     this.allowAnonLogging,
//     this.contentVersion,
//     this.panelizationSummary,
//    required this.imageLinks,
//     this.language,
//     this.previewLink,
//     this.infoLink,
//     this.canonicalVolumeLink,
//   });

//   VolumeInfo.fromJson(dynamic json) {
//     title = json['title'];
//     description = json['description'];
//     authors = json['authors'] != null ? json['authors'].cast<String>() : [];
//     publisher = json['publisher'];
//     readingModes = json['readingModes'] != null
//         ? ReadingModes.fromJson(json['readingModes'])
//         : null;
//     printType = json['printType'];
//     categories =
//         json['categories'] != null ? json['categories'].cast<String>() : [];
//     averageRating = json['averageRating'];
//     ratingsCount = json['ratingsCount'];
//     maturityRating = json['maturityRating'];
//     allowAnonLogging = json['allowAnonLogging'];
//     contentVersion = json['contentVersion'];
//     panelizationSummary = json['panelizationSummary'] != null
//         ? PanelizationSummary.fromJson(json['panelizationSummary'])
//         : null;
//     imageLinks =ImageLinks.fromJson(json['imageLinks']);
//     language = json['language'];
//     previewLink = json['previewLink'];
//     infoLink = json['infoLink'];
//     canonicalVolumeLink = json['canonicalVolumeLink'];
//   }

//   String? title;
//   String?description;
//   List<String>? authors;
//   String? publisher;
//   ReadingModes? readingModes;
//   String? printType;
//   List<String>? categories;
//   num? averageRating;
//   num? ratingsCount;
//   String? maturityRating;
//   bool? allowAnonLogging;
//   String? contentVersion;
//   PanelizationSummary? panelizationSummary;
//     ImageLinks imageLinks;
//   String? language;
//   String? previewLink;
//   String? infoLink;
//   String? canonicalVolumeLink;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['title'] = title;
//     map['authors'] = authors;
//     map['publisher'] = publisher;
//     if (readingModes != null) {
//       map['readingModes'] = readingModes?.toJson();
//     }
//     map['printType'] = printType;
//     map['categories'] = categories;
//     map['averageRating'] = averageRating;
//     map['ratingsCount'] = ratingsCount;
//     map['maturityRating'] = maturityRating;
//     map['allowAnonLogging'] = allowAnonLogging;
//     map['contentVersion'] = contentVersion;
//     if (panelizationSummary != null) {
//       map['panelizationSummary'] = panelizationSummary?.toJson();
//     }

//     map['language'] = language;
//     map['previewLink'] = previewLink;
//     map['infoLink'] = infoLink;
//     map['canonicalVolumeLink'] = canonicalVolumeLink;
//     return map;
//   }
// }
