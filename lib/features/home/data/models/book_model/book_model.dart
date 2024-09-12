import 'package:bookly_app/features/home/data/models/book_model/acces_info.dart';
import 'package:bookly_app/features/home/data/models/book_model/sale_info.dart';
import 'package:bookly_app/features/home/data/models/book_model/search_info.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';

class BookModel {
  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}



// class BookModel {
//   String? kind;
//   String? id;
//   String? etag;
//   String? selfLink;
//   VolumeInfo volumeInfo;
//   SaleInfo? saleInfo;
//   AccessInfo? accessInfo;
//   SearchInfo? searchInfo;

//   BookModel({
//     this.kind,
//     this.id,
//     this.etag,
//     this.selfLink,
//     required this.volumeInfo,
//     this.saleInfo,
//     this.accessInfo,
//     this.searchInfo,
//   });

//   factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
//         kind: json['kind'] as String?,
//         id: json['id'] as String?,
//         etag: json['etag'] as String?,
//         selfLink: json['selfLink'] as String?,
//         volumeInfo:
//             VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
//         saleInfo: json['saleInfo'] == null
//             ? null
//             : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
//         accessInfo: json['accessInfo'] == null
//             ? null
//             : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
//         searchInfo: json['searchInfo'] == null
//             ? null
//             : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
//       );

//   Map<String, dynamic> toJson() => {
//         'kind': kind,
//         'id': id,
//         'etag': etag,
//         'selfLink': selfLink,
//         'volumeInfo': volumeInfo.toJson(),
//         'saleInfo': saleInfo?.toJson(),
//         'accessInfo': accessInfo?.toJson(),
//         'searchInfo': searchInfo?.toJson(),
//       };
// }
