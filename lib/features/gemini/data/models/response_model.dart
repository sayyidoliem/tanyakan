// import 'package:equatable/equatable.dart';
// import 'package:tanyakan/features/gemini/data/models/usage_metadata_model.dart';
// import 'candidates_model.dart';

// class ResponseModel with EquatableMixin {
//   List<CandidatesModel>? candidates;
//   UsageMetadataModel? usageMetadata;
//   String? modelVersion;

//   ResponseModel({
//     this.candidates,
//     this.usageMetadata,
//     this.modelVersion,
//   });

//   @override
//   List<Object?> get props => [candidates, usageMetadata, modelVersion];

//   ResponseModel copyWith({
//     List<CandidatesModel>? candidates,
//     UsageMetadataModel? usageMetadata,
//     String? modelVersion,
//   }) {
//     return ResponseModel(
//       candidates: candidates ?? this.candidates,
//       usageMetadata: usageMetadata ?? this.usageMetadata,
//       modelVersion: modelVersion ?? this.modelVersion,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'candidates': candidates,
//       'usageMetadata': usageMetadata,
//       'modelVersion': modelVersion,
//     };
//   }

//   factory ResponseModel.fromJson(Map<String, dynamic> json) {
//     return ResponseModel(
//       candidates: (json['candidates'] as List<dynamic>?)
//           ?.map((e) => CandidatesModel.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       usageMetadata: json['usageMetadata'] == null
//           ? null
//           : UsageMetadataModel.fromJson(
//               json['usageMetadata'] as Map<String, dynamic>),
//       modelVersion: json['modelVersion'] as String?,
//     );
//   }
// }
