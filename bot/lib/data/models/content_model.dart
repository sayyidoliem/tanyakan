// import 'package:equatable/equatable.dart';
// import 'parts_model.dart';

// class ContentModel with EquatableMixin {
//   List<PartsModel>? parts;
//   String? role;

//   ContentModel({
//     this.parts,
//     this.role,
//   });

//   @override
//   List<Object?> get props => [parts, role];

//   ContentModel copyWith({
//     List<PartsModel>? parts,
//     String? role,
//   }) {
//     return ContentModel(
//       parts: parts ?? this.parts,
//       role: role ?? this.role,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'parts': parts,
//       'role': role,
//     };
//   }

//   factory ContentModel.fromJson(Map<String, dynamic> json) {
//     return ContentModel(
//       parts: (json['parts'] as List<dynamic>?)
//           ?.map((e) => PartsModel.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       role: json['role'] as String?,
//     );
//   }
// }
