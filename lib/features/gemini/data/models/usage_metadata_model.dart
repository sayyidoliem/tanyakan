// import 'package:equatable/equatable.dart';

// class UsageMetadataModel with EquatableMixin {
//   int? promptTokenCount;
//   int? candidatesTokenCount;
//   int? totalTokenCount;

//   UsageMetadataModel({
//     this.promptTokenCount,
//     this.candidatesTokenCount,
//     this.totalTokenCount,
//   });

//   @override
//   List<Object?> get props =>
//       [promptTokenCount, candidatesTokenCount, totalTokenCount];

//   UsageMetadataModel copyWith({
//     int? promptTokenCount,
//     int? candidatesTokenCount,
//     int? totalTokenCount,
//   }) {
//     return UsageMetadataModel(
//       promptTokenCount: promptTokenCount ?? this.promptTokenCount,
//       candidatesTokenCount: candidatesTokenCount ?? this.candidatesTokenCount,
//       totalTokenCount: totalTokenCount ?? this.totalTokenCount,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'promptTokenCount': promptTokenCount,
//       'candidatesTokenCount': candidatesTokenCount,
//       'totalTokenCount': totalTokenCount,
//     };
//   }

//   factory UsageMetadataModel.fromJson(Map<String, dynamic> json) {
//     return UsageMetadataModel(
//       promptTokenCount: json['promptTokenCount'] as int?,
//       candidatesTokenCount: json['candidatesTokenCount'] as int?,
//       totalTokenCount: json['totalTokenCount'] as int?,
//     );
//   }
// }
