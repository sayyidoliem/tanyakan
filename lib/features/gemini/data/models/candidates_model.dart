// import 'package:equatable/equatable.dart';
// import 'content_model.dart';
// import 'safety_ratings_model.dart';

// class CandidatesModel with EquatableMixin {
//   ContentModel? content;
//   String? finishReason;
//   int? index;
//   List<SafetyRatingsModel>? safetyRatings;

//   CandidatesModel({
//     this.content,
//     this.finishReason,
//     this.index,
//     this.safetyRatings,
//   });

//   @override
//   List<Object?> get props => [content, finishReason, index, safetyRatings];

//   CandidatesModel copyWith({
//     ContentModel? content,
//     String? finishReason,
//     int? index,
//     List<SafetyRatingsModel>? safetyRatings,
//   }) {
//     return CandidatesModel(
//       content: content ?? this.content,
//       finishReason: finishReason ?? this.finishReason,
//       index: index ?? this.index,
//       safetyRatings: safetyRatings ?? this.safetyRatings,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'content': content,
//       'finishReason': finishReason,
//       'index': index,
//       'safetyRatings': safetyRatings,
//     };
//   }

//   factory CandidatesModel.fromJson(Map<String, dynamic> json) {
//     return CandidatesModel(
//       content: json['content'] == null
//           ? null
//           : ContentModel.fromJson(json['content'] as Map<String, dynamic>),
//       finishReason: json['finishReason'] as String?,
//       index: json['index'] as int?,
//       safetyRatings: (json['safetyRatings'] as List<dynamic>?)
//           ?.map((e) => SafetyRatingsModel.fromJson(e as Map<String, dynamic>))
//           .toList(),
//     );
//   }
// }
