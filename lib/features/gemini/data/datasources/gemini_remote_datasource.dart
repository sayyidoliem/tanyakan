import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tanyakan/di.dart';

part 'gemini_remote_datasource.g.dart';

abstract class GeminiRemoteDatasource {
  Future<GenerateContentResponse?> generateContentFromText(String prompt);
  Future<GenerateContentResponse?> generateContentFromImage(
      String prompt, DataPart dataPart);
}

class GeminiRemoteDatasourceImpl implements GeminiRemoteDatasource {
  final GenerativeModel model;

  GeminiRemoteDatasourceImpl(this.model);

  @override
  Future<GenerateContentResponse?> generateContentFromImage(
      String prompt, DataPart dataPart) async {
    model.startChat();

    // final chat = await model.startChat().sendMessage(Content.text(prompt));
    final content = await model.generateContent([
      Content.multi([TextPart(prompt), dataPart])
    ]);

    if (content.candidates.isNotEmpty) {
      return content;
    } else {
      throw ServerException("Server error, please try again");
    }
  }

  @override
  Future<GenerateContentResponse?> generateContentFromText(
      String prompt) async {
    model.startChat();

    // final chat = await model.startChat().sendMessage(Content.text(prompt));
    final content = await model.generateContent([Content.text(prompt)]);

    if (content.candidates.isNotEmpty) {
      return content;
    } else {
      throw ServerException("Server error, please try again");
    }
  }

  // Future<void> textGenMultimodalMultiImagePrompt() async {
  //   Future<DataPart> fileToPart(String mimeType, String path) async {
  //     return DataPart(mimeType, await File(path).readAsBytes());
  //   }

  //   final prompt = 'Write an advertising jingle showing how the product in the'
  //       ' first image could solve the problems shown in the second two images.';
  //   final images = await [
  //     fileToPart('image/jpeg', 'resources/jetpack.jpg'),
  //     fileToPart('image/jpeg', 'resources/piranha.jpg'),
  //     fileToPart('image/jpeg', 'resources/firefighter.jpg'),
  //   ].wait;

  //   final response = await model.generateContent([
  //     Content.multi([TextPart(prompt), ...images])
  //   ]);
  //   print(response.text);
  //   // [END text_gen_multimodal_multi_image_prompt]
  // }
}

@riverpod
GeminiRemoteDatasource geminiRemoteDatasource(ref) {
  return GeminiRemoteDatasourceImpl(
    ref.watch(provideGenerativeModelProvider),
  );
}
