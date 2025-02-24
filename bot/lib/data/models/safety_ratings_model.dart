// import 'package:equatable/equatable.dart';

// class SafetyRatingsModel with EquatableMixin {
//   String? category;
//   String? probability;

//   SafetyRatingsModel({
//     this.category,
//     this.probability,
//   });

//   @override
//   List<Object?> get props => [category, probability];

//   SafetyRatingsModel copyWith({
//     String? category,
//     String? probability,
//   }) {
//     return SafetyRatingsModel(
//       category: category ?? this.category,
//       probability: probability ?? this.probability,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'category': category,
//       'probability': probability,
//     };
//   }

//   factory SafetyRatingsModel.fromJson(Map<String, dynamic> json) {
//     return SafetyRatingsModel(
//       category: json['category'] as String?,
//       probability: json['probability'] as String?,
//     );
//   }
// }
