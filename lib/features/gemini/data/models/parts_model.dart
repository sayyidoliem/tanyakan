// import 'package:equatable/equatable.dart';

// class PartsModel with EquatableMixin {
//   String? text;

//   PartsModel({
//     this.text,
//   });

//   @override
//   List<Object?> get props => [text];

//   PartsModel copyWith({
//     String? text,
//   }) {
//     return PartsModel(
//       text: text ?? this.text,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'text': text,
//     };
//   }

//   factory PartsModel.fromJson(Map<String, dynamic> json) {
//     return PartsModel(
//       text: json['text'] as String?,
//     );
//   }
// }
